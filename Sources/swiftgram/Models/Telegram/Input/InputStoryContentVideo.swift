import Foundation

/// Describes a video to post as a story.
struct InputStoryContentVideo: TelegramEntity {
    let type: String = "video"
    let video: String
    let duration: Double?
    let coverFrameTimestamp: Double?
    let isAnimation: Bool?
}
