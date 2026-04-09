import Foundation

/// This object represents the content of a media message to be sent.
enum InputMedia: TelegramEntity {
    case photo(InputMediaPhoto)
    case video(InputMediaVideo)
    case animation(InputMediaAnimation)
    case audio(InputMediaAudio)
    case document(InputMediaDocument)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "photo": self = .photo(try InputMediaPhoto(from: decoder))
        case "video": self = .video(try InputMediaVideo(from: decoder))
        case "animation": self = .animation(try InputMediaAnimation(from: decoder))
        case "audio": self = .audio(try InputMediaAudio(from: decoder))
        case "document": self = .document(try InputMediaDocument(from: decoder))
        default: throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Unknown type")
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .photo(let m): try container.encode(m)
        case .video(let m): try container.encode(m)
        case .animation(let m): try container.encode(m)
        case .audio(let m): try container.encode(m)
        case .document(let m): try container.encode(m)
        }
    }
}
