import Foundation

/// This object contains basic information about a refunded payment.
struct RefundedPayment: TelegramEntity {
    
    /// Three-letter ISO 4217 currency code, or “XTR”
    let currency: String
    
    /// Total refunded price in the smallest units of the currency
    let totalAmount: Int
    
    /// Bot-specified invoice payload
    let invoicePayload: String
    
    /// Telegram payment identifier
    let telegramPaymentChargeId: String
    
    /// Optional. Provider payment identifier
    let providerPaymentChargeId: String?
}
