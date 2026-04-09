import Foundation

/// This object represents a sticker.
struct Sticker: TelegramEntity {
    
    /// Identifier for this file, which can be used to download or reuse the file
    let fileId: String
    
    /// Unique identifier for this file
    let fileUniqueId: String
    
    /// Type of the sticker, currently one of “regular”, “mask”, “custom_emoji”.
    let type: String
    
    /// Sticker width
    let width: Int
    
    /// Sticker height
    let height: Int
    
    /// True, if the sticker is animated
    let isAnimated: Bool
    
    /// True, if the sticker is a video sticker
    let isVideo: Bool
    
    /// Optional. Sticker thumbnail in the .WEBP or .JPG format
    let thumbnail: PhotoSize?
    
    /// Optional. Emoji associated with the sticker
    let emoji: String?
    
    /// Optional. Name of the sticker set to which the sticker belongs
    let setName: String?
    
    /// Optional. For premium regular stickers, premium animation for the sticker
    let premiumAnimation: File?
    
    /// Optional. For mask stickers, the position where the mask should be placed
    let maskPosition: MaskPosition?
    
    /// Optional. For custom emoji stickers, unique identifier of the custom emoji
    let customEmojiId: String?
    
    /// Optional. True, if the sticker must be repainted to a text color
    let needsRepainting: Bool?
    
    /// Optional. File size in bytes
    let fileSize: Int?
}
