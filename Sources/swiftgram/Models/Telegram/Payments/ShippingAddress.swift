import Foundation

/// This object represents a shipping address.
struct ShippingAddress: TelegramEntity {
    
    /// Two-letter ISO 3166-1 alpha-2 country code
    let countryCode: String
    
    /// State, if applicable
    let state: String
    
    /// City
    let city: String
    
    /// First line for the address
    let streetLine1: String
    
    /// Second line for the address
    let streetLine2: String
    
    /// Address post code
    let postCode: String
}
