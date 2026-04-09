import Foundation

/// This object contains basic information about an invoice.
struct Invoice: TelegramEntity {
    
    /// Product name
    let title: String
    
    /// Product description
    let description: String
    
    /// Unique bot deep-linking parameter
    let startParameter: String
    
    /// Three-letter ISO 4217 currency code, or “XTR” for Telegram Stars
    let currency: String
    
    /// Total price in the smallest units of the currency
    let totalAmount: Int
}
