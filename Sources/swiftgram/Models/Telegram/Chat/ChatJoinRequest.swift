import Foundation

/// Represents a join request sent to a chat.
struct ChatJoinRequest: TelegramEntity {
    
    /// Chat to which the request was sent
    let chat: Chat
    
    /// User that sent the join request
    let from: User
    
    /// Identifier of a private chat with the user who sent the join request.
    let userChatId: Int
    
    /// Date the request was sent in Unix time
    let date: Int
    
    /// Optional. Bio of the user.
    let bio: String?
    
    /// Optional. Chat invite link that was used by the user to send the join request
    let inviteLink: ChatInviteLink?
}
