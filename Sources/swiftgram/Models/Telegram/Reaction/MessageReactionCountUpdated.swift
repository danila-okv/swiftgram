import Foundation

/// This object represents reaction changes on a message with anonymous reactions.
struct MessageReactionCountUpdated: TelegramEntity {
    
    /// The chat containing the message
    let chat: Chat
    
    /// Unique message identifier inside the chat
    let messageId: Int
    
    /// Date of the change in Unix time
    let date: Int
    
    /// List of reactions that are present on the message
    let reactions: [ReactionCount]
}
