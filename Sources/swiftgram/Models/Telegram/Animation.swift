import Foundation

/// This object represents an animation file (GIF or H.264/MPEG-4 AVC video without sound).
struct Animation: TelegramEntity {
    
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
    
    /// Optional. Animation thumbnail as defined by the sender
    let thumbnail: PhotoSize?
    
    /// Optional. Original animation filename as defined by the sender
    let fileName: String?
    
    /// Optional. MIME type of the file as defined by the sender
    let mimeType: String?
    
    /// Optional. File size in bytes.
    let fileSize: Int?
}
