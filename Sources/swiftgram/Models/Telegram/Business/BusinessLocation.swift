import Foundation

/// Contains information about the location of a Telegram Business account.
struct BusinessLocation: TelegramEntity {
    
    /// Address of the business
    let address: String
    
    /// Optional. Location of the business
    let location: Location?
}
