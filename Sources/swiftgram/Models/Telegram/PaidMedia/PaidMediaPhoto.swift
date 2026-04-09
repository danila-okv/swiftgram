import Foundation

/// The paid media is a photo.
struct PaidMediaPhoto: TelegramEntity {
    
    /// Type of the paid media, always “photo”
    let type: String
    
    /// The photo
    let photo: [PhotoSize]
}
