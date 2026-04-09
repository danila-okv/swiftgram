import Foundation

/// Describes the physical address of a location.
struct LocationAddress: TelegramEntity {
    
    /// The two-letter ISO 3166-1 alpha-2 country code
    let countryCode: String
    
    /// Optional. State of the location
    let state: String?
    
    /// Optional. City of the location
    let city: String?
    
    /// Optional. Street address of the location
    let street: String?
}
