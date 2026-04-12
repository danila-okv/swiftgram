import Foundation

/// Represents a link to an article or web page.
struct InlineQueryResultArticle: TelegramEntity {
    
    /// Type of the result, must be article
    let type: String = "article"
    
    /// Unique identifier for this result, 1-64 Bytes
    let id: String
    
    /// Title of the result
    let title: String
    
    /// Content of the message to be sent
    let inputMessageContent: InputMessageContent
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. URL of the result
    let url: String?
    
    /// Optional. Short description of the result
    let description: String?
    
    /// Optional. Url of the thumbnail for the result
    let thumbnailUrl: String?
    
    /// Optional. Thumbnail width
    let thumbnailWidth: Int?
    
    /// Optional. Thumbnail height
    let thumbnailHeight: Int?
}
