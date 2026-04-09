import Foundation

/// This object is received when messages are deleted from a connected business account.
struct BusinessMessagesDeleted: TelegramEntity {
    
    /// Unique identifier of the business connection
    let businessConnectionId: String
    
    /// Information about a chat in the business account
    let chat: Chat
    
    /// The list of identifiers of deleted messages
    let messageIds: [Int]
}
