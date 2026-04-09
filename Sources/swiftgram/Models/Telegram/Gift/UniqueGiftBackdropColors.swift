import Foundation

/// This object describes the colors of the backdrop of a unique gift.
struct UniqueGiftBackdropColors: TelegramEntity {
    
    /// The color in the center of the backdrop in RGB format
    let centerColor: Int
    
    /// The color on the edges of the backdrop in RGB format
    let edgeColor: Int
    
    /// The color to be applied to the symbol in RGB format
    let symbolColor: Int
    
    /// The color for the text on the backdrop in RGB format
    let textColor: Int
}
