import Foundation

/// Represents a link to a voice message stored on the Telegram servers.
struct InlineQueryResultCachedVoice: Encodable {
    
    /// Type of the result, must be voice
    let type: String = "voice"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// A valid file identifier for the voice message
    let voiceFileId: String
    
    /// Voice message title
    let title: String
    
    /// Optional. Caption, 0-1024 characters
    let caption: String?
    
    /// Optional. Mode for parsing entities in the voice message caption.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the caption
    let captionEntities: [MessageEntity]?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the voice message
    let inputMessageContent: InputMessageContent?
}
