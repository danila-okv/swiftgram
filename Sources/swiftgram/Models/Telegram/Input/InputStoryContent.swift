import Foundation

/// This object describes the content of a story to post.
enum InputStoryContent: TelegramEntity {
    case photo(InputStoryContentPhoto)
    case video(InputStoryContentVideo)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "photo": self = .photo(try InputStoryContentPhoto(from: decoder))
        case "video": self = .video(try InputStoryContentVideo(from: decoder))
        default: throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Unknown type")
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .photo(let m): try container.encode(m)
        case .video(let m): try container.encode(m)
        }
    }
}
