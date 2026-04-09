import Foundation

/// This object represents a video message (available in Telegram apps as of v.4.0).
struct VideoNote: TelegramEntity {
    
    /// Identifier for this file, which can be used to download or reuse the file
    let fileId: String
    
    /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
    let fileUniqueId: String
    
    /// Video width and height (diameter of the video message) as defined by the sender
    let length: Int
    
    /// Duration of the video in seconds as defined by the sender
    let duration: Int
    
    /// Optional. Video thumbnail
    let thumbnail: PhotoSize?
    
    /// Optional. File size in bytes
    let fileSize: Int?
}
