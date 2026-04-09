import Foundation

/// This object represents the content of a service message, sent whenever a user in the chat triggers a proximity alert set by another user.
struct ProximityAlertTriggered: TelegramEntity {
    
    /// User that triggered the alert
    let traveler: User
    
    /// User that set the alert
    let watcher: User
    
    /// The distance between the users
    let distance: Int
}
