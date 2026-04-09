import Foundation

/// Describes the type of a clickable area on a story.
enum StoryAreaType: TelegramEntity {
    case location(StoryAreaTypeLocation)
    case suggestedReaction(StoryAreaTypeSuggestedReaction)
    case link(StoryAreaTypeLink)
    case weather(StoryAreaTypeWeather)
    case uniqueGift(StoryAreaTypeUniqueGift)

    private enum TypeKeys: String, CodingKey {
        case type
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "location":
            self = .location(try StoryAreaTypeLocation(from: decoder))
        case "suggested_reaction":
            self = .suggestedReaction(try StoryAreaTypeSuggestedReaction(from: decoder))
        case "link":
            self = .link(try StoryAreaTypeLink(from: decoder))
        case "weather":
            self = .weather(try StoryAreaTypeWeather(from: decoder))
        case "unique_gift":
            self = .uniqueGift(try StoryAreaTypeUniqueGift(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: container,
                debugDescription: "Unknown story area type: \(type)"
            )
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .location(let value): try container.encode(value)
        case .suggestedReaction(let value): try container.encode(value)
        case .link(let value): try container.encode(value)
        case .weather(let value): try container.encode(value)
        case .uniqueGift(let value): try container.encode(value)
        }
    }
}
