//
//  MenuButtonCommands.swift
//  swiftgram
//
//  Created by Danila Okunev on 9.04.26.
//


import Foundation

/// Represents a menu button, which opens the bot's list of commands.
struct MenuButtonCommands: TelegramEntity {
    let type: String = "commands"
}

/// Represents a menu button, which launches a Web App.
struct MenuButtonWebApp: TelegramEntity {
    let type: String = "web_app"
    let text: String
    let webApp: WebAppInfo
}

/// Describes that no specific value for the menu button was set.
struct MenuButtonDefault: TelegramEntity {
    let type: String = "default"
}

/// This object describes the bot's menu button in a private chat.
enum MenuButton: TelegramEntity {
    case commands(MenuButtonCommands)
    case webApp(MenuButtonWebApp)
    case `default`(MenuButtonDefault)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "commands": self = .commands(try MenuButtonCommands(from: decoder))
        case "web_app": self = .webApp(try MenuButtonWebApp(from: decoder))
        case "default": self = .default(try MenuButtonDefault(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Unknown menu button type: \(type)")
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .commands(let value): try container.encode(value)
        case .webApp(let value): try container.encode(value)
        case .default(let value): try container.encode(value)
        }
    }
}