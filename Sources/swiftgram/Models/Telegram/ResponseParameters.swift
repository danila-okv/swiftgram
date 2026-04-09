import Foundation

/// Describes why a request was unsuccessful.
struct ResponseParameters: TelegramEntity {
    
    /// Optional. The group has been migrated to a supergroup with the specified identifier.
    let migrateToChatId: Int?
    
    /// Optional. In case of exceeding flood control, the number of seconds left to wait
    let retryAfter: Int?
}
