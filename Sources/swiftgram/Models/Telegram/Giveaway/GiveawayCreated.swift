import Foundation

/// This object represents a service message about the creation of a scheduled giveaway.
struct GiveawayCreated: TelegramEntity {
    
    /// Optional. The number of Telegram Stars to be split between giveaway winners; for Telegram Star giveaways only
    let prizeStarCount: Int?
}
