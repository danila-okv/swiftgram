import Foundation

/// This object represents a video file of a specific quality.
struct VideoQuality: TelegramEntity {
    
    /// Identifier for this file, which can be used to download or reuse the file
    let fileId: String
    
    /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
    let fileUniqueId: String
    
    /// Video width
    let width: Int
    
    /// Video height
    let height: Int
    
    /// Codec that was used to encode the video, for example, “h264”, “h265”, or “av01”
    let codec: String
    
    /// Optional. File size in bytes.
    let fileSize: Int?
}
