import Foundation

/// This object describes the type of a background.
enum BackgroundType: TelegramEntity {
    case fill(BackgroundTypeFill)
    case wallpaper(BackgroundTypeWallpaper)
    case pattern(BackgroundTypePattern)
    case chatTheme(BackgroundTypeChatTheme)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "fill":
            self = .fill(try BackgroundTypeFill(from: decoder))
        case "wallpaper":
            self = .wallpaper(try BackgroundTypeWallpaper(from: decoder))
        case "pattern":
            self = .pattern(try BackgroundTypePattern(from: decoder))
        case "chat_theme":
            self = .chatTheme(try BackgroundTypeChatTheme(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: container,
                debugDescription: "Unknown background type: \(type)"
            )
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .fill(let value): try container.encode(value)
        case .wallpaper(let value): try container.encode(value)
        case .pattern(let value): try container.encode(value)
        case .chatTheme(let value): try container.encode(value)
        }
    }
}
