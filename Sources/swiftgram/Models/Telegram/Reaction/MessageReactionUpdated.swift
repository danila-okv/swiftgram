import Foundation

/// This object represents a change of a reaction on a message performed by a user.
struct MessageReactionUpdated: TelegramEntity {
    
    /// The chat containing the message the user reacted to
    let chat: Chat
    
    /// Unique identifier of the message inside the chat
    let messageId: Int
    
    /// Optional. The user that changed the reaction
    let user: User?
    
    /// Optional. The chat on behalf of which the reaction was changed
    let actorChat: Chat?
    
    /// Date of the change in Unix time
    let date: Int
    
    /// Previous list of reaction types that were set by the user
    let oldReaction: [ReactionType]
    
    /// New list of reaction types that have been set by the user
    let newReaction: [ReactionType]
}
