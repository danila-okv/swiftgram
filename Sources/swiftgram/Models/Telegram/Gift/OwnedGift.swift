import Foundation

/// This object describes a gift received and owned by a user or a chat.
enum OwnedGift: TelegramEntity {
    case regular(OwnedGiftRegular)
    case unique(OwnedGiftUnique)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "regular":
            self = .regular(try OwnedGiftRegular(from: decoder))
        case "unique":
            self = .unique(try OwnedGiftUnique(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: container,
                debugDescription: "Unknown owned gift type: \(type)"
            )
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .regular(let value): try container.encode(value)
        case .unique(let value): try container.encode(value)
        }
    }
}
