import Foundation

/// This object describes the way a background is filled based on the selected colors.
enum BackgroundFill: TelegramEntity {
    case solid(BackgroundFillSolid)
    case gradient(BackgroundFillGradient)
    case freeformGradient(BackgroundFillFreeformGradient)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "solid":
            self = .solid(try BackgroundFillSolid(from: decoder))
        case "gradient":
            self = .gradient(try BackgroundFillGradient(from: decoder))
        case "freeform_gradient":
            self = .freeformGradient(try BackgroundFillFreeformGradient(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: container,
                debugDescription: "Unknown background fill type: \(type)"
            )
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .solid(let value): try container.encode(value)
        case .gradient(let value): try container.encode(value)
        case .freeformGradient(let value): try container.encode(value)
        }
    }
}
