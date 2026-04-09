import Foundation

/// The background is a freeform gradient that rotates after every message in the chat.
struct BackgroundFillFreeformGradient: TelegramEntity {
    
    /// Type of the background fill, always “freeform_gradient”
    let type: String = "freeform_gradient"
    
    /// A list of the 3 or 4 base colors used to generate the freeform gradient in the RGB24 format
    let colors: [Int]
}
