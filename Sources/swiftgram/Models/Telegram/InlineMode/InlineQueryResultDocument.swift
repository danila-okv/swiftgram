import Foundation

/// Represents a link to a file.
struct InlineQueryResultDocument: TelegramEntity {
    
    /// Type of the result, must be document
    let type: String = "document"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// Title for the result
    let title: String
    
    /// Optional. Caption of the document to be sent
    let caption: String?
    
    /// Optional. Mode for parsing entities in the document caption.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the caption
    let captionEntities: [MessageEntity]?
    
    /// A valid URL for the file
    let documentUrl: String
    
    /// MIME type of the content of the file, either “application/pdf” or “application/zip”
    let mimeType: String
    
    /// Optional. Short description of the result
    let description: String?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the file
    let inputMessageContent: InputMessageContent?
    
    /// Optional. URL of the thumbnail (JPEG only) for the file
    let thumbnailUrl: String?
    
    /// Optional. Thumbnail width
    let thumbnailWidth: Int?
    
    /// Optional. Thumbnail height
    let thumbnailHeight: Int?
}
