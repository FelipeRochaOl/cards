import Foundation

enum Flag: String {
    case mastercard = "mastercard"
    case visa = "visa"
    case elo = "elo"
    case none = "outros"
   
    static func loadFlag(index: Int) -> Flag {
        switch index {
        case 0:
            return .mastercard
        case 1:
            return .visa
        case 2:
            return .elo
        default:break
        }
        return .none
    }
}

struct Cards: Codable {
    var cards:[CardsElement]
}

struct CardsElement: Codable {
    let id, name, date, number, flag: String
}
