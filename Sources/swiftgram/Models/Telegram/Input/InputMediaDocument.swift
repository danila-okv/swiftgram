import Foundation

/// Represents a general file to be sent.
struct InputMediaDocument: TelegramEntity {
    let type: String = "document"
    let media: String
    let thumbnail: String?
    let caption: String?
    let parseMode: String?
    let captionEntities: [MessageEntity]?
    let disableContentTypeDetection: Bool?
}
