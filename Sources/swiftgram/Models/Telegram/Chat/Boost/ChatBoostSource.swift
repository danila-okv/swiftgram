import Foundation

/// The boost was obtained by subscribing to Telegram Premium.
struct ChatBoostSourcePremium: TelegramEntity {
    let source: String = "premium"
    let user: User
}

/// The boost was obtained by the creation of Telegram Premium gift codes.
struct ChatBoostSourceGiftCode: TelegramEntity {
    let source: String = "gift_code"
    let user: User
}

/// The boost was obtained by the creation of a Telegram Premium or a Telegram Star giveaway.
struct ChatBoostSourceGiveaway: TelegramEntity {
    let source: String = "giveaway"
    let giveawayMessageId: Int
    let user: User?
    let prizeStarCount: Int?
    let isUnclaimed: Bool?
}

/// This object describes the source of a chat boost.
enum ChatBoostSource: TelegramEntity {
    case premium(ChatBoostSourcePremium)
    case giftCode(ChatBoostSourceGiftCode)
    case giveaway(ChatBoostSourceGiveaway)

    private enum SourceKeys: String, CodingKey {
        case source
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: SourceKeys.self)
        let source = try container.decode(String.self, forKey: .source)

        switch source {
        case "premium": self = .premium(try ChatBoostSourcePremium(from: decoder))
        case "gift_code": self = .giftCode(try ChatBoostSourceGiftCode(from: decoder))
        case "giveaway": self = .giveaway(try ChatBoostSourceGiveaway(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(forKey: .source, in: container, debugDescription: "Unknown boost source: \(source)")
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .premium(let value): try container.encode(value)
        case .giftCode(let value): try container.encode(value)
        case .giveaway(let value): try container.encode(value)
        }
    }
}
