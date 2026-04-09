import Foundation

/// Helper type to represent a chat identifier, which can be either an integer or a username string.
enum ChatId: Codable {
    case id(Int)
    case username(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let intValue = try? container.decode(Int.self) {
            self = .id(intValue)
        } else if let stringValue = try? container.decode(String.self) {
            self = .username(stringValue)
        } else {
            throw DecodingError.typeMismatch(
                ChatId.self,
                DecodingError.Context(
                    codingPath: decoder.codingPath,
                    debugDescription: "Expected Int or String for ChatId"
                )
            )
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .id(let value): try container.encode(value)
        case .username(let value): try container.encode(value)
        }
    }
}
