import Foundation

/// Describes the price of a suggested post.
struct SuggestedPostPrice: TelegramEntity {
    
    /// Currency in which the post will be paid. Currently, must be one of “XTR” for Telegram Stars or “TON” for toncoins
    let currency: String
    
    /// The amount of the currency that will be paid for the post in the smallest units of the currency
    let amount: Int
}
