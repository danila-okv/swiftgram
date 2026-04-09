import Foundation

/// Represents a video to be sent.
struct InputMediaVideo: TelegramEntity {
    let type: String = "video"
    let media: String
    let thumbnail: String?
    let cover: String?
    let startTimestamp: Int?
    let caption: String?
    let parseMode: String?
    let captionEntities: [MessageEntity]?
    let showCaptionAboveMedia: Bool?
    let width: Int?
    let height: Int?
    let duration: Int?
    let supportsStreaming: Bool?
    let hasSpoiler: Bool?
}
