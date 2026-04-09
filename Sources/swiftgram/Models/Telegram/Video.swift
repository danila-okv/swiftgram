import Foundation

/// This object represents a video file.
struct Video: TelegramEntity {
    
    /// Identifier for this file, which can be used to download or reuse the file
    let fileId: String
    
    /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
    let fileUniqueId: String
    
    /// Video width as defined by the sender
    let width: Int
    
    /// Video height as defined by the sender
    let height: Int
    
    /// Duration of the video in seconds as defined by the sender
    let duration: Int
    
    /// Optional. Video thumbnail
    let thumbnail: PhotoSize?
    
    /// Optional. Available sizes of the cover of the video in the message
    let cover: [PhotoSize]?
    
    /// Optional. Timestamp in seconds from which the video will play in the message
    let startTimestamp: Int?
    
    /// Optional. List of available qualities of the video
    let qualities: [VideoQuality]?
    
    /// Optional. Original filename as defined by the sender
    let fileName: String?
    
    /// Optional. MIME type of the file as defined by the sender
    let mimeType: String?
    
    /// Optional. File size in bytes.
    let fileSize: Int?
}
