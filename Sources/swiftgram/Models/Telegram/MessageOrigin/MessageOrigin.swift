import Foundation

/// This object describes the origin of a message. It can be one of MessageOriginUser, MessageOriginHiddenUser, MessageOriginChat, MessageOriginChannel.
enum MessageOrigin: TelegramEntity {
    case user(MessageOriginUser)
    case hiddenUser(MessageOriginHiddenUser)
    case chat(MessageOriginChat)
    case channel(MessageOriginChannel)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "user":
            self = .user(try MessageOriginUser(from: decoder))
        case "hidden_user":
            self = .hiddenUser(try MessageOriginHiddenUser(from: decoder))
        case "chat":
            self = .chat(try MessageOriginChat(from: decoder))
        case "channel":
            self = .channel(try MessageOriginChannel(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: container,
                debugDescription: "Unknown message origin type: \(type)"
            )
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .user(let value): try container.encode(value)
        case .hiddenUser(let value): try container.encode(value)
        case .chat(let value): try container.encode(value)
        case .channel(let value): try container.encode(value)
        }
    }
}
