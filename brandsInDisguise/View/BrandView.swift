//
//  BrandView.swift
//  brandsInDisguise
//
//  Created by Игорь Чернышов on 03.09.2023.
//

import SwiftUI

struct BrandView: View {

	let firstName: String
	let secondName: String
	let details: [String: String]?
	let isInternationalToRU: Bool

    var body: some View {
		NavigationLink {
			if let details {
				DetailsView(parent: firstName, details: details)
			}
		} label: {
			VStack {
				HStack {
					VStack(alignment: .leading) {
						Text(isInternationalToRU ? firstName : secondName)
							.font(.system(size: 24, weight: .semibold))
							.foregroundStyle(.cyan)

						Text(isInternationalToRU ? secondName : firstName)
							.font(.system(size: 20, weight: .regular))
					}

					Spacer()

					if details != nil {
						Image(systemName: "chevron.right")
							.foregroundStyle(.primary)
					}
				}

				Rectangle()
					.frame(width: .infinity, height: 1)
			}
			.foregroundStyle(.secondary)
			.tint(.secondary)
			.padding(.horizontal, 16)
		}
		.disabled(details == nil)
    }
}

#Preview {
	BrandView(firstName: "Bershka", secondName: "Ecru", details: [:], isInternationalToRU: true)
		.preferredColorScheme(.dark)
}
