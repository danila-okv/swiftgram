import Foundation

/// The message was originally sent by a known user.
struct MessageOriginUser: TelegramEntity {
    
    /// Type of the message origin, always “user”
    let type: String
    
    /// Date the message was sent originally in Unix time
    let date: Int
    
    /// User that sent the message originally
    let senderUser: User
}
