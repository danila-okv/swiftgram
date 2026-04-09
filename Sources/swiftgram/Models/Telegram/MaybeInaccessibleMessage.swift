import Foundation

/// This object describes a message that can be inaccessible to the bot. It can be one of Message or InaccessibleMessage.
indirect enum MaybeInaccessibleMessage: TelegramEntity {
    case message(Message)
    case inaccessibleMessage(InaccessibleMessage)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        
        // Пытаемся декодировать как InaccessibleMessage.
        // В документации сказано, что у него date всегда 0.
        if let inaccessible = try? container.decode(InaccessibleMessage.self), inaccessible.date == 0 {
            self = .inaccessibleMessage(inaccessible)
        } else {
            // В противном случае декодируем как обычное Message
            let message = try container.decode(Message.self)
            self = .message(message)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .message(let message):
            try container.encode(message)
        case .inaccessibleMessage(let inaccessible):
            try container.encode(inaccessible)
        }
    }
}
