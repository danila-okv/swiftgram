import Foundation

/// Represents a photo to be sent.
struct InputMediaPhoto: TelegramEntity {
    let type: String = "photo"
    let media: String
    let caption: String?
    let parseMode: String?
    let captionEntities: [MessageEntity]?
    let showCaptionAboveMedia: Bool?
    let hasSpoiler: Bool?
}
