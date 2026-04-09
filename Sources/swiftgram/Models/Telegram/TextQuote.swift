import Foundation

/// This object contains information about the quoted part of a message that is replied to by the given message.
struct TextQuote: TelegramEntity {
    
    /// Text of the quoted part of a message that is replied to by the given message
    let text: String
    
    /// Optional. Special entities that appear in the quote. Currently, only bold, italic, underline, strikethrough, spoiler, custom_emoji, and date_time entities are kept in quotes.
    let entities: [MessageEntity]?
    
    /// Approximate quote position in the original message in UTF-16 code units as specified by the sender
    let position: Int
    
    /// Optional. True, if the quote was chosen manually by the message sender. Otherwise, the quote was added automatically by the server.
    let isManual: Bool?
}
