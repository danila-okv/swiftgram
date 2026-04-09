import Foundation

/// This object represents a gift that can be sent by the bot.
struct Gift: TelegramEntity {
    
    /// Unique identifier of the gift
    let id: String
    
    /// The sticker that represents the gift
    let sticker: Sticker
    
    /// The number of Telegram Stars that must be paid to send the sticker
    let starCount: Int
    
    /// Optional. The number of Telegram Stars that must be paid to upgrade the gift
    let upgradeStarCount: Int?
    
    /// Optional. True, if the gift can only be purchased by Telegram Premium subscribers
    let isPremium: Bool?
    
    /// Optional. True, if the gift can be used to customize a user's appearance
    let hasColors: Bool?
    
    /// Optional. The total number of gifts of this type that can be sent
    let totalCount: Int?
    
    /// Optional. The number of remaining gifts of this type
    let remainingCount: Int?
    
    /// Optional. The total number of gifts of this type that can be sent by the bot
    let personalTotalCount: Int?
    
    /// Optional. The number of remaining gifts of this type that can be sent by the bot
    let personalRemainingCount: Int?
    
    /// Optional. Background of the gift
    let background: GiftBackground?
    
    /// Optional. The total number of different unique gifts that can be obtained
    let uniqueGiftVariantCount: Int?
    
    /// Optional. Information about the chat that published the gift
    let publisherChat: Chat?
}
