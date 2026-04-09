import Foundation

/// The paid media to send is a video.
struct InputPaidMediaVideo: TelegramEntity {
    let type: String = "video"
    let media: String
    let thumbnail: String?
    let cover: String?
    let startTimestamp: Int?
    let width: Int?
    let height: Int?
    let duration: Int?
    let supportsStreaming: Bool?
}
