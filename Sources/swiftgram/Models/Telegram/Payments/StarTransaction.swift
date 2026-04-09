import Foundation

/// Describes a Telegram Star transaction.
struct StarTransaction: TelegramEntity {
    
    /// Unique identifier of the transaction.
    let id: String
    
    /// Integer amount of Telegram Stars transferred
    let amount: Int
    
    /// Optional. The number of 1/1000000000 shares of Telegram Stars
    let nanostarAmount: Int?
    
    /// Date the transaction was created in Unix time
    let date: Int
    
    /// Optional. Source of an incoming transaction
    let source: TransactionPartner?
    
    /// Optional. Receiver of an outgoing transaction
    let receiver: TransactionPartner?
}
