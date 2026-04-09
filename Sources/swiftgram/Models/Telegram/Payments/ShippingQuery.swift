import Foundation

/// This object contains information about an incoming shipping query.
struct ShippingQuery: TelegramEntity {
    
    /// Unique query identifier
    let id: String
    
    /// User who sent the query
    let from: User
    
    /// Bot-specified invoice payload
    let invoicePayload: String
    
    /// User specified shipping address
    let shippingAddress: ShippingAddress
}
