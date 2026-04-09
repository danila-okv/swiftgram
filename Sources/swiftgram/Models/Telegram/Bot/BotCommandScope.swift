import Foundation

/// Represents the default scope of bot commands.
struct BotCommandScopeDefault: TelegramEntity {
    let type: String = "default"
}

/// Represents the scope of bot commands, covering all private chats.
struct BotCommandScopeAllPrivateChats: TelegramEntity {
    let type: String = "all_private_chats"
}

/// Represents the scope of bot commands, covering all group and supergroup chats.
struct BotCommandScopeAllGroupChats: TelegramEntity {
    let type: String = "all_group_chats"
}

/// Represents the scope of bot commands, covering all group and supergroup chat administrators.
struct BotCommandScopeAllChatAdministrators: TelegramEntity {
    let type: String = "all_chat_administrators"
}

/// Represents the scope of bot commands, covering a specific chat.
struct BotCommandScopeChat: TelegramEntity {
    let type: String = "chat"
    let chatId: ChatId
}

/// Represents the scope of bot commands, covering all administrators of a specific group or supergroup chat.
struct BotCommandScopeChatAdministrators: TelegramEntity {
    let type: String = "chat_administrators"
    let chatId: ChatId
}

/// Represents the scope of bot commands, covering a specific member of a group or supergroup chat.
struct BotCommandScopeChatMember: TelegramEntity {
    let type: String = "chat_member"
    let chatId: ChatId
    let userId: Int
}

/// This object represents the scope to which bot commands are applied.
enum BotCommandScope: TelegramEntity {
    case `default`(BotCommandScopeDefault)
    case allPrivateChats(BotCommandScopeAllPrivateChats)
    case allGroupChats(BotCommandScopeAllGroupChats)
    case allChatAdministrators(BotCommandScopeAllChatAdministrators)
    case chat(BotCommandScopeChat)
    case chatAdministrators(BotCommandScopeChatAdministrators)
    case chatMember(BotCommandScopeChatMember)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "default": self = .default(try BotCommandScopeDefault(from: decoder))
        case "all_private_chats": self = .allPrivateChats(try BotCommandScopeAllPrivateChats(from: decoder))
        case "all_group_chats": self = .allGroupChats(try BotCommandScopeAllGroupChats(from: decoder))
        case "all_chat_administrators": self = .allChatAdministrators(try BotCommandScopeAllChatAdministrators(from: decoder))
        case "chat": self = .chat(try BotCommandScopeChat(from: decoder))
        case "chat_administrators": self = .chatAdministrators(try BotCommandScopeChatAdministrators(from: decoder))
        case "chat_member": self = .chatMember(try BotCommandScopeChatMember(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Unknown scope type: \(type)")
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .default(let value): try container.encode(value)
        case .allPrivateChats(let value): try container.encode(value)
        case .allGroupChats(let value): try container.encode(value)
        case .allChatAdministrators(let value): try container.encode(value)
        case .chat(let value): try container.encode(value)
        case .chatAdministrators(let value): try container.encode(value)
        case .chatMember(let value): try container.encode(value)
        }
    }
}
