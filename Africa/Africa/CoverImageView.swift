//
//  CoverImageView.swift
//  Africa
//
//  Created by Давид on 09.05.2021.
//

import SwiftUI

struct CoverImageView: View {

	// MARK: - PROPERTIES

	let coverImages = Bundle.main.decode("covers.json")

	// MARK: - BODY
	var body: some View {
		TabView {
			ForEach(coverImages) { item in
				Image(item.name)
					.resizable()
					.scaledToFill()
			}//: Loop
		} //: Tab
		.tabViewStyle(PageTabViewStyle())
	}
}

// MARL: - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
	static var previews: some View {
		CoverImageView()
			.previewLayout(.fixed(width: 400, height: 300))
	}
}
