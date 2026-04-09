import Foundation

/// Represents a chat member that has no additional privileges or restrictions.
struct ChatMemberMember: TelegramEntity {
    
    /// The member's status in the chat, always “member”
    let status: String
    
    /// Optional. Tag of the member
    let tag: String?
    
    /// Information about the user
    let user: User
    
    /// Optional. Date when the user's subscription will expire; Unix time
    let untilDate: Int?
}
