import Foundation

/// The paid media is a video.
struct PaidMediaVideo: TelegramEntity {
    
    /// Type of the paid media, always “video”
    let type: String
    
    /// The video
    let video: Video
}
