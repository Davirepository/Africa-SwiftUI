//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Давид on 09.05.2021.
//

import Foundation

extension Bundle {
	func decode(_ file: String) -> [CoverImageModel] {
		// 1. Locate the json file
		guard let url = self.url(forResource: file, withExtension: nil) else {
			fatalError("Fail to locate \(file) in bundle.")
		}

		// 2. Create a property for the data
		guard let data = try? Data(contentsOf: url) else {
			fatalError("Fail to load \(file) from bundle.")
		}

		// 3. Create a decoder
		let decoder = JSONDecoder()

		// 4. Create a property for the decoded data
		guard let loaded = try? decoder.decode([CoverImageModel].self, from: data) else {
			fatalError("Fail to decode \(file) from bundle.")
		}

		// 5. Return the ready-to-use data
		return loaded
	}
}
