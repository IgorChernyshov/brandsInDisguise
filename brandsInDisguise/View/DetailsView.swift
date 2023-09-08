//
//  DetailsView.swift
//  brandsInDisguise
//
//  Created by Игорь Чернышов on 03.09.2023.
//

import SwiftUI

struct DetailsView: View {

	let parent: String
	let details: [String: String]

    var body: some View {
		ScrollView(.vertical) {
			ForEach(Array(details.keys), id: \.self) { key in
				VStack {
					HStack {
						VStack(alignment: .leading) {
							Text(key)
								.font(.system(size: 24, weight: .semibold))
								.foregroundStyle(.cyan)

							Text(details[key] ?? "")
								.font(.system(size: 20, weight: .regular))
						}

						Spacer()
					}
					Rectangle()
						.frame(height: 1)
				}
			}
		}
		.navigationTitle(parent)
		.foregroundStyle(.secondary)
		.padding(.horizontal, 16)
    }
}

struct DetailsView_Previews: PreviewProvider {
	static var previews: some View {
		DetailsView(parent: "Foo Bar", details: ["foo": "bar"])
			.preferredColorScheme(.dark)
	}
}
