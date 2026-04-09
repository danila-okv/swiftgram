import Foundation

/// This object represents a service message about a change in auto-delete timer settings.
struct MessageAutoDeleteTimerChanged: TelegramEntity {
    
    /// New auto-delete time for messages in the chat; in seconds
    let messageAutoDeleteTime: Int
}
