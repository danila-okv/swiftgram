import Foundation

/// This object describes a unique gift that was upgraded from a regular gift.
struct UniqueGift: TelegramEntity {
    
    /// Identifier of the regular gift from which the gift was upgraded
    let giftId: String
    
    /// Human-readable name of the regular gift
    let baseName: String
    
    /// Unique name of the gift.
    let name: String
    
    /// Unique number of the upgraded gift
    let number: Int
    
    /// Model of the gift
    let model: UniqueGiftModel
    
    /// Symbol of the gift
    let symbol: UniqueGiftSymbol
    
    /// Backdrop of the gift
    let backdrop: UniqueGiftBackdrop
    
    /// Optional. True, if the original regular gift was exclusively purchaseable by Premium
    let isPremium: Bool?
    
    /// Optional. True, if the gift was used to craft another gift
    let isBurned: Bool?
    
    /// Optional. True, if the gift is assigned from the TON blockchain
    let isFromBlockchain: Bool?
    
    /// Optional. The color scheme that can be used by the gift's owner
    let colors: UniqueGiftColors?
    
    /// Optional. Information about the chat that published the gift
    let publisherChat: Chat?
}
