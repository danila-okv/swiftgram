import Foundation

/// This object represents a portion of the price for goods or services.
struct LabeledPrice: TelegramEntity {
    
    /// Portion label
    let label: String
    
    /// Price of the product in the smallest units of the currency
    let amount: Int
}
