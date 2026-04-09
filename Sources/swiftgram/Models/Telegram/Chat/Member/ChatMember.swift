import Foundation

/// This object contains information about one member of a chat.
enum ChatMember: TelegramEntity {
    case owner(ChatMemberOwner)
    case administrator(ChatMemberAdministrator)
    case member(ChatMemberMember)
    case restricted(ChatMemberRestricted)
    case left(ChatMemberLeft)
    case banned(ChatMemberBanned)

    private enum TypeKeys: String, CodingKey {
        case status
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let status = try container.decode(String.self, forKey: .status)

        switch status {
        case "creator":
            self = .owner(try ChatMemberOwner(from: decoder))
        case "administrator":
            self = .administrator(try ChatMemberAdministrator(from: decoder))
        case "member":
            self = .member(try ChatMemberMember(from: decoder))
        case "restricted":
            self = .restricted(try ChatMemberRestricted(from: decoder))
        case "left":
            self = .left(try ChatMemberLeft(from: decoder))
        case "kicked":
            self = .banned(try ChatMemberBanned(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(
                forKey: .status,
                in: container,
                debugDescription: "Unknown chat member status: \(status)"
            )
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .owner(let value): try container.encode(value)
        case .administrator(let value): try container.encode(value)
        case .member(let value): try container.encode(value)
        case .restricted(let value): try container.encode(value)
        case .left(let value): try container.encode(value)
        case .banned(let value): try container.encode(value)
        }
    }
}
