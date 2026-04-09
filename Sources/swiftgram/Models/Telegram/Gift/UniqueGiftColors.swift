import Foundation

/// This object contains information about the color scheme for a user's appearance based on a unique gift.
struct UniqueGiftColors: TelegramEntity {
    
    /// Custom emoji identifier of the unique gift's model
    let modelCustomEmojiId: String
    
    /// Custom emoji identifier of the unique gift's symbol
    let symbolCustomEmojiId: String
    
    /// Main color used in light themes; RGB format
    let lightThemeMainColor: Int
    
    /// List of 1-3 additional colors used in light themes; RGB format
    let lightThemeOtherColors: [Int]
    
    /// Main color used in dark themes; RGB format
    let darkThemeMainColor: Int
    
    /// List of 1-3 additional colors used in dark themes; RGB format
    let darkThemeOtherColors: [Int]
}
