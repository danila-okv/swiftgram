import Foundation

/// This object describes the model of a unique gift.
struct UniqueGiftModel: TelegramEntity {
    
    /// Name of the model
    let name: String
    
    /// The sticker that represents the unique gift
    let sticker: Sticker
    
    /// The number of unique gifts that receive this model for every 1000 gift upgrades
    let rarityPerMille: Int
    
    /// Optional. Rarity of the model if it is a crafted model.
    let rarity: String?
}
