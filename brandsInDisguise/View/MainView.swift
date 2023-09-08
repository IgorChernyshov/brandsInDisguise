//
//  MainView.swift
//  brandsInDisguise
//
//  Created by Игорь Чернышов on 03.09.2023.
//

import SwiftUI

struct MainView: View {

	let brands = Brand.allCases
	
	var title: String {
		isInternationalToRU ? "🌍 → 🇷🇺" : "🇷🇺 → 🌍"
	}

	@State var isInternationalToRU: Bool = true

    var body: some View {
		NavigationView {
			ScrollView(.vertical) {
				VStack(alignment: .leading) {
					let sortedBrands = brands.sorted {
						isInternationalToRU ?
						$0.internationalName < $1.internationalName :
						$0.nameInRussia < $1.nameInRussia
					}

					ForEach(sortedBrands, id: \.self) { brand in
						BrandView(firstName: brand.internationalName,
								  secondName: brand.nameInRussia,
								  details: brand.details,
								  isInternationalToRU: isInternationalToRU)
					}
				}
			}
			.navigationTitle("Бренды \(title)")
			.navigationViewStyle(StackNavigationViewStyle())
			.toolbar(content: {
				ToolbarItem(placement: .navigationBarLeading) {
					NavigationLink {
						SettingsView()
					} label: {
						Image(systemName: "gear")
							.font(.system(size: 20, weight: .regular))
							.tint(.cyan)
					}
				}

				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
						isInternationalToRU.toggle()
					} label: {
						Image(systemName: "arrow.right.arrow.left")
							.font(.system(size: 16, weight: .semibold))
							.tint(.cyan)
					}
				}
			})
		}
		.tint(.primary)
    }
}

struct MainView_Previews: PreviewProvider {
	static var previews: some View {
		MainView()
			.preferredColorScheme(.dark)
	}
}
