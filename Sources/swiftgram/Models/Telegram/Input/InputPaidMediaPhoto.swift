import Foundation

/// The paid media to send is a photo.
struct InputPaidMediaPhoto: TelegramEntity {
    let type: String = "photo"
    let media: String
}
