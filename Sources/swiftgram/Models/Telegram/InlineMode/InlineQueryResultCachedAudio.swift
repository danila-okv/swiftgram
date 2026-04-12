import Foundation

/// Represents a link to an MP3 audio file stored on the Telegram servers.
struct InlineQueryResultCachedAudio: Encodable {
    
    /// Type of the result, must be audio
    let type: String = "audio"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// A valid file identifier for the audio file
    let audioFileId: String
    
    /// Optional. Caption, 0-1024 characters
    let caption: String?
    
    /// Optional. Mode for parsing entities in the audio caption.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the caption
    let captionEntities: [MessageEntity]?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the audio
    let inputMessageContent: InputMessageContent?
}
