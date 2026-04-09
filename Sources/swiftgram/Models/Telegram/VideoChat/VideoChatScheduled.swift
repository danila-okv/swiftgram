import Foundation

/// This object represents a service message about a video chat scheduled in the chat.
struct VideoChatScheduled: TelegramEntity {
    
    /// Point in time (Unix timestamp) when the video chat is supposed to be started by a chat administrator
    let startDate: Int
}
