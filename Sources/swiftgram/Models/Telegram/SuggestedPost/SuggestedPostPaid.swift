import Foundation

/// Describes a service message about a successful payment for a suggested post.
struct SuggestedPostPaid: TelegramEntity {
    
    /// Optional. Message containing the suggested post.
    let suggestedPostMessage: Message?
    
    /// Currency in which the payment was made. Currently, one of “XTR” or “TON”
    let currency: String
    
    /// Optional. The amount of the currency that was received by the channel in nanotoncoins; for payments in toncoins only
    let amount: Int?
    
    /// Optional. The amount of Telegram Stars that was received by the channel; for payments in Telegram Stars only
    let starAmount: StarAmount?
}
