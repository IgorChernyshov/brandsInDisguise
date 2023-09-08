//
//  SettingView.swift
//  brandsInDisguise
//
//  Created by Игорь Чернышов on 04.09.2023.
//

import SwiftUI

struct SettingView: View {
	let imageSystemName: String
	let buttonText: String
	let action: () -> Void

	var body: some View {
		Button {
			action()
		} label: {
			HStack {
				Image(systemName: imageSystemName)
					.foregroundStyle(.cyan)

				Text(buttonText)
					.tint(.primary)
			}
			.frame(width: 300, height: 48)
			.overlay(
				RoundedRectangle(cornerRadius: 25)
					.stroke(.white, lineWidth: 2)
			)
		}
	}
}

struct SettingView_Previews: PreviewProvider {
	static var previews: some View {
		SettingView(imageSystemName: "heart.fill", buttonText: "Оценить приложение", action: { print("Did tap") })
			.preferredColorScheme(.dark)
	}
}
