import Foundation

/// This object describes the background of a gift.
struct GiftBackground: TelegramEntity {
    
    /// Center color of the background in RGB format
    let centerColor: Int
    
    /// Edge color of the background in RGB format
    let edgeColor: Int
    
    /// Text color of the background in RGB format
    let textColor: Int
}
