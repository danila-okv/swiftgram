import Foundation

/// This object represents a service message about the completion of a giveaway without public winners.
struct GiveawayCompleted: TelegramEntity {
    
    /// Number of winners in the giveaway
    let winnerCount: Int
    
    /// Optional. Number of undistributed prizes
    let unclaimedPrizeCount: Int?
    
    /// Optional. Message with the giveaway that was completed, if it wasn't deleted
    let giveawayMessage: Message?
    
    /// Optional. True, if the giveaway is a Telegram Star giveaway. Otherwise, currently, the giveaway is a Telegram Premium giveaway.
    let isStarGiveaway: Bool?
}
