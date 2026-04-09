import Foundation

/// Describes an interval of time during which a business is open.
struct BusinessOpeningHoursInterval: TelegramEntity {
    
    /// The minute's sequence number in a week, starting on Monday, marking the start of the time interval
    let openingMinute: Int
    
    /// The minute's sequence number in a week, starting on Monday, marking the end of the time interval
    let closingMinute: Int
}
