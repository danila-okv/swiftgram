import Foundation

/// Represents a link to a voice recording in an .OGG container encoded with OPUS.
struct InlineQueryResultVoice: TelegramEntity {
    
    /// Type of the result, must be voice
    let type: String = "voice"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// A valid URL for the voice recording
    let voiceUrl: String
    
    /// Recording title
    let title: String
    
    /// Optional. Caption, 0-1024 characters
    let caption: String?
    
    /// Optional. Mode for parsing entities in the voice message caption.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the caption
    let captionEntities: [MessageEntity]?
    
    /// Optional. Recording duration in seconds
    let voiceDuration: Int?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the voice recording
    let inputMessageContent: InputMessageContent?
}
