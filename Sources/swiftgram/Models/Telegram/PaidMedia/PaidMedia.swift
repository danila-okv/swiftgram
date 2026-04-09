import Foundation

/// This object describes paid media. It can be one of PaidMediaPreview, PaidMediaPhoto, PaidMediaVideo.
enum PaidMedia: TelegramEntity {
    case preview(PaidMediaPreview)
    case photo(PaidMediaPhoto)
    case video(PaidMediaVideo)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "preview":
            self = .preview(try PaidMediaPreview(from: decoder))
        case "photo":
            self = .photo(try PaidMediaPhoto(from: decoder))
        case "video":
            self = .video(try PaidMediaVideo(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: container,
                debugDescription: "Unknown paid media type: \(type)"
            )
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .preview(let value): try container.encode(value)
        case .photo(let value): try container.encode(value)
        case .video(let value): try container.encode(value)
        }
    }
}
