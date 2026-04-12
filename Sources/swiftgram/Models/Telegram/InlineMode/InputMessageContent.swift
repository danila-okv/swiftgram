import Foundation

/// This object represents the content of a message to be sent as a result of an inline query.
enum InputMessageContent: Codable {
    case text(InputTextMessageContent)
    case location(InputLocationMessageContent)
    case venue(InputVenueMessageContent)
    case contact(InputContactMessageContent)
    case invoice(InputInvoiceMessageContent)
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .text(let content): try container.encode(content)
        case .location(let content): try container.encode(content)
        case .venue(let content): try container.encode(content)
        case .contact(let content): try container.encode(content)
        case .invoice(let content): try container.encode(content)
        }
    }
}
