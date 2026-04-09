import Foundation

/// Represents a chat member that isn't currently a member of the chat, but may join it themselves.
struct ChatMemberLeft: TelegramEntity {
    
    /// The member's status in the chat, always “left”
    let status: String
    
    /// Information about the user
    let user: User
}
