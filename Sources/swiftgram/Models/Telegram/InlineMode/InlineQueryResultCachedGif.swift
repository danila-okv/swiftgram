import Foundation

/// Represents a link to an animated GIF file stored on the Telegram servers.
struct InlineQueryResultCachedGif: Encodable {
    
    /// Type of the result, must be gif
    let type: String = "gif"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// A valid file identifier for the GIF file
    let gifFileId: String
    
    /// Optional. Title for the result
    let title: String?
    
    /// Optional. Caption of the GIF file to be sent, 0-1024 characters
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
