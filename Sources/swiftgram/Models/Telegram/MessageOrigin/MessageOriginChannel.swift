import Foundation

/// The message was originally sent to a channel chat.
struct MessageOriginChannel: TelegramEntity {
    
    /// Type of the message origin, always “channel”
    let type: String
    
    /// Date the message was sent originally in Unix time
    let date: Int
    
    /// Channel chat to which the message was originally sent
    let chat: Chat
    
    /// Unique message identifier inside the chat
    let messageId: Int
    
    /// Optional. Signature of the original post author
    let authorSignature: String?
}
