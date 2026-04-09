import Foundation

/// This object represents changes in the status of a chat member.
struct ChatMemberUpdated: TelegramEntity {
    
    /// Chat the user belongs to
    let chat: Chat
    
    /// Performer of the action, which resulted in the change
    let from: User
    
    /// Date the change was done in Unix time
    let date: Int
    
    /// Previous information about the chat member
    let oldChatMember: ChatMember
    
    /// New information about the chat member
    let newChatMember: ChatMember
    
    /// Optional. Chat invite link, which was used by the user to join the chat
    let inviteLink: ChatInviteLink?
    
    /// Optional. True, if the user joined the chat after sending a direct join request
    let viaJoinRequest: Bool?
    
    /// Optional. True, if the user joined the chat via a chat folder invite link
    let viaChatFolderInviteLink: Bool?
}
