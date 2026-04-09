import Foundation

/// The message was originally sent by an unknown user.
struct MessageOriginHiddenUser: TelegramEntity {
    
    /// Type of the message origin, always “hidden_user”
    let type: String
    
    /// Date the message was sent originally in Unix time
    let date: Int
    
    /// Name of the user that sent the message originally
    let senderUserName: String
}
