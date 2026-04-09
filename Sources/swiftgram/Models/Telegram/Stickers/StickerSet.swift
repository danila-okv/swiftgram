import Foundation

/// This object represents a sticker set.
struct StickerSet: TelegramEntity {
    
    /// Sticker set name
    let name: String
    
    /// Sticker set title
    let title: String
    
    /// Type of stickers in the set: “regular”, “mask”, “custom_emoji”
    let stickerType: String
    
    /// List of all set stickers
    let stickers: [Sticker]
    
    /// Optional. Sticker set thumbnail
    let thumbnail: PhotoSize?
}
