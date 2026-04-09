import Foundation

/// Describes the opening hours of a business.
struct BusinessOpeningHours: TelegramEntity {
    
    /// Unique name of the time zone for which the opening hours are defined
    let timeZoneName: String
    
    /// List of time intervals describing business opening hours
    let openingHours: [BusinessOpeningHoursInterval]
}
