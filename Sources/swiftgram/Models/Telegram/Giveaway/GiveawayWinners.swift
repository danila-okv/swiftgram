import Foundation

/// This object represents a message about the completion of a giveaway with public winners.
struct GiveawayWinners: TelegramEntity {
    
    /// The chat that created the giveaway
    let chat: Chat
    
    /// Identifier of the message with the giveaway in the chat
    let giveawayMessageId: Int
    
    /// Point in time (Unix timestamp) when winners of the giveaway were selected
    let winnersSelectionDate: Int
    
    /// Total number of winners in the giveaway
    let winnerCount: Int
    
    /// List of up to 100 winners of the giveaway
    let winners: [User]
    
    /// Optional. The number of other chats the user had to join in order to be eligible for the giveaway
    let additionalChatCount: Int?
    
    /// Optional. The number of Telegram Stars that were split between giveaway winners; for Telegram Star giveaways only
    let prizeStarCount: Int?
    
    /// Optional. The number of months the Telegram Premium subscription won from the giveaway will be active for; for Telegram Premium giveaways only
    let premiumSubscriptionMonthCount: Int?
    
    /// Optional. Number of undistributed prizes
    let unclaimedPrizeCount: Int?
    
    /// Optional. True, if only users who had joined the chats after the giveaway started were eligible to win
    let onlyNewMembers: Bool?
    
    /// Optional. True, if the giveaway was canceled because the payment for it was refunded
    let wasRefunded: Bool?
    
    /// Optional. Description of additional giveaway prize
    let prizeDescription: String?
}
