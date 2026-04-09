import Foundation

/// An animated profile photo in the MPEG4 format.
struct InputProfilePhotoAnimated: TelegramEntity {
    let type: String = "animated"
    let animation: String
    let mainFrameTimestamp: Double?
}
