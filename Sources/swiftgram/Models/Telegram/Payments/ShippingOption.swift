import Foundation

/// This object represents one shipping option.
struct ShippingOption: TelegramEntity {
    
    /// Shipping option identifier
    let id: String
    
    /// Option title
    let title: String
    
    /// List of price portions
    let prices: [LabeledPrice]
}
