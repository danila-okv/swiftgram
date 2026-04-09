import Foundation

/// Represents an animation file to be sent.
struct InputMediaAnimation: TelegramEntity {
    let type: String = "animation"
    let media: String
    let thumbnail: String?
    let caption: String?
    let parseMode: String?
    let captionEntities: [MessageEntity]?
    let showCaptionAboveMedia: Bool?
    let width: Int?
    let height: Int?
    let duration: Int?
    let hasSpoiler: Bool?
}
