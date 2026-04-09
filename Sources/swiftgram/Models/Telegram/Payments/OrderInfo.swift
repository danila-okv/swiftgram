import Foundation

/// This object represents information about an order.
struct OrderInfo: TelegramEntity {
    
    /// Optional. User name
    let name: String?
    
    /// Optional. User's phone number
    let phoneNumber: String?
    
    /// Optional. User email
    let email: String?
    
    /// Optional. User shipping address
    let shippingAddress: ShippingAddress?
}
