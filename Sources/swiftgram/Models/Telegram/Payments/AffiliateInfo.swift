import Foundation

/// Contains information about the affiliate that received a commission.
struct AffiliateInfo: TelegramEntity {
    
    /// Optional. The bot or the user that received an affiliate commission
    let affiliateUser: User?
    
    /// Optional. The chat that received an affiliate commission
    let affiliateChat: Chat?
    
    /// The number of Telegram Stars received by the affiliate for each 1000 Stars
    let commissionPerMille: Int
    
    /// Integer amount of Telegram Stars received
    let amount: Int
    
    /// Optional. The number of 1/1000000000 shares of Telegram Stars
    let nanostarAmount: Int?
}
