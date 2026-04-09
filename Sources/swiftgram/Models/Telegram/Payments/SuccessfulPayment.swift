import Foundation

/// This object contains basic information about a successful payment.
struct SuccessfulPayment: TelegramEntity {
    
    /// Three-letter ISO 4217 currency code, or “XTR”
    let currency: String
    
    /// Total price in the smallest units of the currency
    let totalAmount: Int
    
    /// Bot-specified invoice payload
    let invoicePayload: String
    
    /// Optional. Expiration date of the subscription, in Unix time
    let subscriptionExpirationDate: Int?
    
    /// Optional. True, if the payment is a recurring payment
    let isRecurring: Bool?
    
    /// Optional. True, if the payment is the first payment for a subscription
    let isFirstRecurring: Bool?
    
    /// Optional. Identifier of the shipping option chosen by the user
    let shippingOptionId: String?
    
    /// Optional. Order information provided by the user
    let orderInfo: OrderInfo?
    
    /// Telegram payment identifier
    let telegramPaymentChargeId: String
    
    /// Provider payment identifier
    let providerPaymentChargeId: String
}
