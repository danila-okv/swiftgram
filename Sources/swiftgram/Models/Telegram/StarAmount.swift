import Foundation

/// Describes an amount of Telegram Stars.
struct StarAmount: TelegramEntity {
    
    /// Integer amount of Telegram Stars, rounded to 0; can be negative
    let amount: Int
    
    /// Optional. The number of 1/1000000000 shares of Telegram Stars; from -999999999 to 999999999
    let nanostarAmount: Int?
}
