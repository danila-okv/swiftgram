import Foundation

/// This object describes a profile photo to set.
enum InputProfilePhoto: TelegramEntity {
    case staticPhoto(InputProfilePhotoStatic)
    case animatedPhoto(InputProfilePhotoAnimated)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "static": self = .staticPhoto(try InputProfilePhotoStatic(from: decoder))
        case "animated": self = .animatedPhoto(try InputProfilePhotoAnimated(from: decoder))
        default: throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Unknown type")
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .staticPhoto(let m): try container.encode(m)
        case .animatedPhoto(let m): try container.encode(m)
        }
    }
}
