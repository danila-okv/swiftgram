import Foundation

/// The background is a .PNG or .TGV pattern to be combined with the background fill chosen by the user.
struct BackgroundTypePattern: TelegramEntity {
    
    /// Type of the background, always “pattern”
    let type: String
    
    /// Document with the pattern
    let document: Document
    
    /// The background fill that is combined with the pattern
    let fill: BackgroundFill
    
    /// Intensity of the pattern when it is shown above the filled background; 0-100
    let intensity: Int
    
    /// Optional. True, if the background fill must be applied only to the pattern itself.
    let isInverted: Bool?
    
    /// Optional. True, if the background moves slightly when the device is tilted
    let isMoving: Bool?
}
