import Foundation

/// This object represents one size of a photo or a file / sticker thumbnail.
struct PhotoSize: TelegramEntity {
    
    /// Identifier for this file, which can be used to download or reuse the file
    let fileId: String
    
    /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
    let fileUniqueId: String
    
    /// Photo width
    let width: Int
    
    /// Photo height
    let height: Int
    
    /// Optional. File size in bytes
    let fileSize: Int?
}
