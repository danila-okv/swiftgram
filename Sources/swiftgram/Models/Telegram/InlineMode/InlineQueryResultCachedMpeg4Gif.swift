import Foundation

/// Represents a link to a video animation (H.264/MPEG-4 AVC video without sound) stored on the Telegram servers.
struct InlineQueryResultCachedMpeg4Gif: Encodable {
    
    /// Type of the result, must be mpeg4_gif
    let type: String = "mpeg4_gif"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// A valid file identifier for the MPEG4 file
    let mpeg4FileId: String
    
    /// Optional. Title for the result
    let title: String?
    
    /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters
    let caption: String?
    
    /// Optional. Mode for parsing entities in the caption.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the caption
    let captionEntities: [MessageEntity]?
    
    /// Optional. Pass True, if the caption must be shown above the message media
    let showCaptionAboveMedia: Bool?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the video animation
    let inputMessageContent: InputMessageContent?
}
