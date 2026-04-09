import Foundation

/// A static profile photo in the .JPG format.
struct InputProfilePhotoStatic: TelegramEntity {
    let type: String = "static"
    let photo: String
}
