import Foundation

/// Describes a photo to post as a story.
struct InputStoryContentPhoto: TelegramEntity {
    let type: String = "photo"
    let photo: String
}
