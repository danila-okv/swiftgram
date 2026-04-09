import Foundation

/// Contains a list of Telegram Star transactions.
struct StarTransactions: TelegramEntity {
    
    /// The list of transactions
    let transactions: [StarTransaction]
}
