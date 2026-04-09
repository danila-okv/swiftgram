import Foundation

/// This object describes the symbol shown on the pattern of a unique gift.
struct UniqueGiftSymbol: TelegramEntity {
    
    /// Name of the symbol
    let name: String
    
    /// The sticker that represents the unique gift
    let sticker: Sticker
    
    /// The number of unique gifts that receive this model for every 1000 gifts upgraded
    let rarityPerMille: Int
}
