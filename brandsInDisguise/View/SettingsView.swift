//
//  SettingsView.swift
//  brandsInDisguise
//
//  Created by Игорь Чернышов on 04.09.2023.
//

import StoreKit
import SwiftUI

struct SettingsView: View {
    var body: some View {
		VStack(spacing: 24) {
			SettingView(imageSystemName: "envelope.fill",
						buttonText: "Отправить предложение",
						action: { sendSuggestion() })

			SettingView(imageSystemName: "heart.fill",
						buttonText: "Оценить приложение",
						action: { requestReview() })

//			SettingView(imageSystemName: "hand.thumbsup.fill",
//						buttonText: "Поддержать разработчиков",
//						action: {  })
		}
    }

	private func sendSuggestion() {
		if let url = URL(string: "mailto:ichernyshov@bk.ru") {
			UIApplication.shared.open(url)
		}
	}

	private func requestReview() {
		guard let currentScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
			print("Unable to get current scene")
			return
		}
		SKStoreReviewController.requestReview(in: currentScene)
	}
}

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView()
			.preferredColorScheme(.dark)
	}
}
