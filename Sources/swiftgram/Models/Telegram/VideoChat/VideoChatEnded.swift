import Foundation

/// This object represents a service message about a video chat ended in the chat.
struct VideoChatEnded: TelegramEntity {
    
    /// Video chat duration in seconds
    let duration: Int
}
