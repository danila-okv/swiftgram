import Foundation

/// Represents a link to a page containing an embedded video player or a video file.
struct InlineQueryResultVideo: TelegramEntity {
    
    /// Type of the result, must be video
    let type: String = "video"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// A valid URL for the embedded video player or video file
    let videoUrl: String
    
    /// MIME type of the content of the video URL, “text/html” or “video/mp4”
    let mimeType: String
    
    /// URL of the thumbnail (JPEG only) for the video
    let thumbnailUrl: String
    
    /// Title for the result
    let title: String
    
    /// Optional. Caption of the video to be sent
    let caption: String?
    
    /// Optional. Mode for parsing entities in the video caption.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the caption
    let captionEntities: [MessageEntity]?
    
    /// Optional. Pass True, if the caption must be shown above the message media
    let showCaptionAboveMedia: Bool?
    
    /// Optional. Video width
    let videoWidth: Int?
    
    /// Optional. Video height
    let videoHeight: Int?
    
    /// Optional. Video duration in seconds
    let videoDuration: Int?
    
    /// Optional. Short description of the result
    let description: String?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the video.
    let inputMessageContent: InputMessageContent?
}
