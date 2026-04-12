import Foundation

/// Represents a link to an animated GIF file.
struct InlineQueryResultGif: TelegramEntity {
    
    /// Type of the result, must be gif
    let type: String = "gif"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// A valid URL for the GIF file
    let gifUrl: String
    
    /// Optional. Width of the GIF
    let gifWidth: Int?
    
    /// Optional. Height of the GIF
    let gifHeight: Int?
    
    /// Optional. Duration of the GIF in seconds
    let gifDuration: Int?
    
    /// URL of the static or animated thumbnail for the result
    let thumbnailUrl: String
    
    /// Optional. MIME type of the thumbnail, must be one of “image/jpeg”, “image/gif”, or “video/mp4”.
    let thumbnailMimeType: String?
    
    /// Optional. Title for the result
    let title: String?
    
    /// Optional. Caption of the GIF file to be sent
    let caption: String?
    
    /// Optional. Mode for parsing entities in the caption.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the caption
    let captionEntities: [MessageEntity]?
    
    /// Optional. Pass True, if the caption must be shown above the message media
    let showCaptionAboveMedia: Bool?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the GIF animation
    let inputMessageContent: InputMessageContent?
}
