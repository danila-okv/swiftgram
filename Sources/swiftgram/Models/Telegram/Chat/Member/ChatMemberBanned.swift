import Foundation

/// Represents a chat member that was banned in the chat and can't return.
struct ChatMemberBanned: TelegramEntity {
    
    /// The member's status in the chat, always “kicked”
    let status: String
    
    /// Information about the user
    let user: User
    
    /// Date when restrictions will be lifted for this user; Unix time. If 0, then the user is banned forever
    let untilDate: Int
}
