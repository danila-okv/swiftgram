import Foundation

/// This object describes the backdrop of a unique gift.
struct UniqueGiftBackdrop: TelegramEntity {
    
    /// Name of the backdrop
    let name: String
    
    /// Colors of the backdrop
    let colors: UniqueGiftBackdropColors
    
    /// The number of unique gifts that receive this backdrop for every 1000 gifts upgraded
    let rarityPerMille: Int
}
