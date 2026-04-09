import Foundation

/// Represents a chat member that owns the chat and has all administrator privileges.
struct ChatMemberOwner: TelegramEntity {
    
    /// The member's status in the chat, always “creator”
    let status: String
    
    /// Information about the user
    let user: User
    
    /// True, if the user's presence in the chat is hidden
    let isAnonymous: Bool
    
    /// Optional. Custom title for this user
    let customTitle: String?
}
