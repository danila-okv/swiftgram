import Foundation

/// Describes a service message about a unique gift that was sent or received.
struct UniqueGiftInfo: TelegramEntity {
    
    /// Information about the gift
    let gift: UniqueGift
    
    /// Origin of the gift. Currently: “upgrade”, “transfer”, “resale”, “gifted_upgrade”, or “offer”
    let origin: String
    
    /// Optional. For gifts bought from other users, the currency (XTR or TON)
    let lastResaleCurrency: String?
    
    /// Optional. The price paid for the gift in Stars or nanotoncoins
    let lastResaleAmount: Int?
    
    /// Optional. Unique identifier of the received gift for the bot
    let ownedGiftId: String?
    
    /// Optional. Number of Telegram Stars that must be paid to transfer the gift
    let transferStarCount: Int?
    
    /// Optional. Point in time (Unix timestamp) when the gift can be transferred
    let nextTransferDate: Int?
}
