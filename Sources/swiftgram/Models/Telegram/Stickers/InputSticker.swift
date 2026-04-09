import Foundation

/// This object describes a sticker to be added to a sticker set.
struct InputSticker: TelegramEntity {
    
    /// The added sticker. Pass a file_id, HTTP URL, or “attach://<file_attach_name>”
    let sticker: String
    
    /// Format of the added sticker: “static”, “animated”, or “video”
    let format: String
    
    /// List of 1-20 emoji associated with the sticker
    let emojiList: [String]
    
    /// Optional. Position where the mask should be placed
    let maskPosition: MaskPosition?
    
    /// Optional. List of 0-20 search keywords
    let keywords: [String]?
}
