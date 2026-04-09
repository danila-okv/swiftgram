import Foundation

/// This object represents a story.
struct Story: TelegramEntity {
    
    /// Chat that posted the story
    let chat: Chat
    
    /// Unique identifier for the story in the chat
    let id: Int
}
