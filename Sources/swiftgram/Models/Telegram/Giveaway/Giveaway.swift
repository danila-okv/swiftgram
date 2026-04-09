import Foundation

/// This object represents a message about a scheduled giveaway.
struct Giveaway: TelegramEntity {
    
    /// The list of chats which the user must join to participate in the giveaway
    let chats: [Chat]
    
    /// Point in time (Unix timestamp) when winners of the giveaway will be selected
    let winnersSelectionDate: Int
    
    /// The number of users which are supposed to be selected as winners of the giveaway
    let winnerCount: Int
    
    /// Optional. True, if only users who join the chats after the giveaway started should be eligible to win
    let onlyNewMembers: Bool?
    
    /// Optional. True, if the list of giveaway winners will be visible to everyone
    let hasPublicWinners: Bool?
    
    /// Optional. Description of additional giveaway prize
    let prizeDescription: String?
    
    /// Optional. A list of two-letter ISO 3166-1 alpha-2 country codes indicating the countries from which eligible users for the giveaway must come.
    let countryCodes: [String]?
    
    /// Optional. The number of Telegram Stars to be split between giveaway winners; for Telegram Star giveaways only
    let prizeStarCount: Int?
    
    /// Optional. The number of months the Telegram Premium subscription won from the giveaway will be active for; for Telegram Premium giveaways only
    let premiumSubscriptionMonthCount: Int?
}
