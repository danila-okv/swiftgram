import Foundation

/// Represents the content of a text message to be sent as the result of an inline query.
struct InputTextMessageContent: TelegramEntity {
    
    /// Text of the message to be sent, 1-4096 characters
    let messageText: String
    
    /// Optional. Mode for parsing entities in the message text.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in message text
    let entities: [MessageEntity]?
    
    /// Optional. Link preview generation options for the message
    let linkPreviewOptions: LinkPreviewOptions?
}
