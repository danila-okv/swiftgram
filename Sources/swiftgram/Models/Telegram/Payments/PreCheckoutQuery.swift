import Foundation

/// This object contains information about an incoming pre-checkout query.
struct PreCheckoutQuery: TelegramEntity {
    
    /// Unique query identifier
    let id: String
    
    /// User who sent the query
    let from: User
    
    /// Three-letter ISO 4217 currency code, or “XTR”
    let currency: String
    
    /// Total price in the smallest units of the currency
    let totalAmount: Int
    
    /// Bot-specified invoice payload
    let invoicePayload: String
    
    /// Optional. Identifier of the shipping option chosen by the user
    let shippingOptionId: String?
    
    /// Optional. Order information provided by the user
    let orderInfo: OrderInfo?
}
