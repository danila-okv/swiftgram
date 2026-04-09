import Foundation

/// This object represents a service message about a user boosting a chat.
struct ChatBoostAdded: TelegramEntity {
    
    /// Number of boosts added by the user
    let boostCount: Int
}
