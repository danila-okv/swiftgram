import Foundation

/// Represents a link to a photo.
struct InlineQueryResultPhoto: TelegramEntity {
    
    /// Type of the result, must be photo
    let type: String = "photo"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// A valid URL of the photo. Photo must be in JPEG format.
    let photoUrl: String
    
    /// URL of the thumbnail for the photo
    let thumbnailUrl: String
    
    /// Optional. Width of the photo
    let photoWidth: Int?
    
    /// Optional. Height of the photo
    let photoHeight: Int?
    
    /// Optional. Title for the result
    let title: String?
    
    /// Optional. Short description of the result
    let description: String?
    
    /// Optional. Caption of the photo to be sent
    let caption: String?
    
    /// Optional. Mode for parsing entities in the photo caption.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the caption
    let captionEntities: [MessageEntity]?
    
    /// Optional. Pass True, if the caption must be shown above the message media
    let showCaptionAboveMedia: Bool?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the photo
    let inputMessageContent: InputMessageContent?
}
