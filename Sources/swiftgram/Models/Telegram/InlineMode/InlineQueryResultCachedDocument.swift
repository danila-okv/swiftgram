import Foundation

/// Represents a link to a file stored on the Telegram servers.
struct InlineQueryResultCachedDocument: Encodable {
    
    /// Type of the result, must be document
    let type: String = "document"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// Title for the result
    let title: String
    
    /// A valid file identifier for the file
    let documentFileId: String
    
    /// Optional. Short description of the result
    let description: String?
    
    /// Optional. Caption of the document to be sent, 0-1024 characters
    let caption: String?
    
    /// Optional. Mode for parsing entities in the document caption.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the caption
    let captionEntities: [MessageEntity]?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the file
    let inputMessageContent: InputMessageContent?
}
