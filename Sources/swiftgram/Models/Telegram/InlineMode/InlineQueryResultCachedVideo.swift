import Foundation

/// Represents a link to a video file stored on the Telegram servers.
struct InlineQueryResultCachedVideo: Encodable {
    
    /// Type of the result, must be video
    let type: String = "video"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// A valid file identifier for the video file
    let videoFileId: String
    
    /// Title for the result
    let title: String
    
    /// Optional. Short description of the result
    let description: String?
    
    /// Optional. Caption of the video to be sent, 0-1024 characters
    let caption: String?
    
    /// Optional. Mode for parsing entities in the video caption.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the caption
    let captionEntities: [MessageEntity]?
    
    /// Optional. Pass True, if the caption must be shown above the message media
    let showCaptionAboveMedia: Bool?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the video
    let inputMessageContent: InputMessageContent?
}
