import Foundation

/// The message was originally sent on behalf of a chat to a group chat.
struct MessageOriginChat: TelegramEntity {
    
    /// Type of the message origin, always “chat”
    let type: String
    
    /// Date the message was sent originally in Unix time
    let date: Int
    
    /// Chat that sent the message originally
    let senderChat: Chat
    
    /// Optional. For messages originally sent by an anonymous chat administrator, original message author signature
    let authorSignature: String?
}
