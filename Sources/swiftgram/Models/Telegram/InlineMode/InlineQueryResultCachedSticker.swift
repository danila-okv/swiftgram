import Foundation

/// Represents a link to a sticker stored on the Telegram servers.
struct InlineQueryResultCachedSticker: Encodable {
    
    /// Type of the result, must be sticker
    let type: String = "sticker"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// A valid file identifier of the sticker
    let stickerFileId: String
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the sticker
    let inputMessageContent: InputMessageContent?
}
