import Foundation

/// Describes a service message about a change in the price of paid messages within a chat.
struct PaidMessagePriceChanged: TelegramEntity {
    
    /// The new number of Telegram Stars that must be paid by non-administrator users
    let paidMessageStarCount: Int
}
