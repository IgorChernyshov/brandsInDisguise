//
//  DataSource.swift
//  brandsInDisguise
//
//  Created by Игорь Чернышов on 03.09.2023.
//

// MARK: - Brand

enum Brand: CaseIterable {
	case pullAndBear
	case bershka
	case stradivarius
	case osha
	case zara
	case mohito
	case reserved
	case levis
	case cropp
	case house
	case starbucks
	case massimoDutti
	case sinsay
	case mcDonalds
	case paulig
	case lOccitane
	case renault
	case jAC
	case aeolusE70
	case esquire
	case cosmopolitan
	case mensHealth
	case maxibon
	case valio
	case pizzaHut
	case cocaCola
	case lego
	case lush
	case reebok
	case kfc
	case hellyHansen
	case hamleys
	case panasonic
	case sephora
	case shell
}

extension Brand {
	var nameInRussia: String {
		switch self {
		case .pullAndBear: return "DUB"
		case .bershka: return "Ecru"
		case .stradivarius: return "Viler"
		case .osha: return "Oxxo"
		case .zara: return "Maag"
		case .mohito: return "Mo"
		case .reserved: return "Re"
		case .levis: return "Jns"
		case .cropp: return "Cr"
		case .house: return "Xc"
		case .starbucks: return "Stars Coffee"
		case .massimoDutti: return "Idol"
		case .sinsay: return "Син"
		case .mcDonalds: return "Вкусно и точка"
		case .paulig: return "Poetti"
		case .lOccitane: return "Л’Окситан / SoBeautiful"
		case .renault: return "Москвич"
		case .jAC: return "Москвич-3"
		case .aeolusE70: return "Evolute i-Pro"
		case .esquire: return "Правила жизни"
		case .cosmopolitan: return "VOICE"
		case .mensHealth: return "Men Today"
		case .maxibon: return "Maxiduo"
		case .valio: return "Viola"
		case .pizzaHut: return "Пицца Н"
		case .cocaCola: return "Добрый Cola"
		case .lego: return "Мир Кубиков"
		case .lush: return "Relish / Oomph"
		case .reebok: return "Sneaker BOX"
		case .kfc: return "Ростик’с"
		case .hellyHansen: return "Хансен"
		case .hamleys: return "Винни"
		case .panasonic: return "Eplaza"
		case .sephora: return "Иль де Ботэ"
		case .shell: return "Teboil"
		}
	}

	var internationalName: String {
		switch self {
		case .pullAndBear: return "Pull & Bear"
		case .bershka: return "Bershka"
		case .stradivarius: return "Stradivarius"
		case .osha: return "Osha"
		case .zara: return "Zara"
		case .mohito: return "Mohito"
		case .reserved: return "Reserved"
		case .levis: return "Levi’s"
		case .cropp: return "Cropp"
		case .house: return "House"
		case .starbucks: return "Starbucks"
		case .massimoDutti: return "Massimo Dutti"
		case .sinsay: return "Sinsay"
		case .mcDonalds: return "Mc’Donalds"
		case .paulig: return "Paulig"
		case .lOccitane: return "L’Occitane"
		case .renault: return "Renault"
		case .jAC: return "JAC"
		case .aeolusE70: return "Aeolus E70"
		case .esquire: return "Esquire"
		case .cosmopolitan: return "Cosmopolitan"
		case .mensHealth: return "Men’s Health"
		case .maxibon: return "Maxibon"
		case .valio: return "Valio"
		case .pizzaHut: return "Pizza Hut"
		case .cocaCola: return "Coca-Cola"
		case .lego: return "Lego"
		case .lush: return "Lush"
		case .reebok: return "Reebok"
		case .kfc: return "KFC"
		case .hellyHansen: return "Helly Hansen"
		case .hamleys: return "Hamleys"
		case .panasonic: return "Panasonic"
		case .sephora: return "Sephora"
		case .shell: return "Shell"
		}
	}

	var details: [String: String]? {
		switch self {
		case .mcDonalds: return Details.mcDonalds
		default: return nil
		}
	}
}

// MARK: - Details
enum Details {
	static let mcDonalds = ["Биг Мак": "Биг Хит",
							"Биг Тейсти" : "Биг Спешиал",
							"Двойной Роял Чизбургер": "Двойной Гранд",
							"Роял Де Люкс": "Гранд Де Люкс",
							"Филе-о-фиш": "Фиш Бургер",
							"Макчикен": "Чикен Хит",
							"Чикен Тейсти": "Чикен Премьер"]
}
