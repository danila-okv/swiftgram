import Foundation

/// This object describes the type of a reaction.
enum ReactionType: TelegramEntity {
    case emoji(ReactionTypeEmoji)
    case customEmoji(ReactionTypeCustomEmoji)
    case paid(ReactionTypePaid)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "emoji":
            self = .emoji(try ReactionTypeEmoji(from: decoder))
        case "custom_emoji":
            self = .customEmoji(try ReactionTypeCustomEmoji(from: decoder))
        case "paid":
            self = .paid(try ReactionTypePaid(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: container,
                debugDescription: "Unknown reaction type: \(type)"
            )
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .emoji(let value): try container.encode(value)
        case .customEmoji(let value): try container.encode(value)
        case .paid(let value): try container.encode(value)
        }
    }
}
