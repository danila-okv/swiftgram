import Foundation

/// Represents an audio file to be treated as music to be sent.
struct InputMediaAudio: TelegramEntity {
    let type: String = "audio"
    let media: String
    let thumbnail: String?
    let caption: String?
    let parseMode: String?
    let captionEntities: [MessageEntity]?
    let duration: Int?
    let performer: String?
    let title: String?
}
