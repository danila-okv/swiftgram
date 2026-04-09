import Foundation

/// Represents a chat member that has some additional privileges.
struct ChatMemberAdministrator: TelegramEntity {
    
    /// The member's status in the chat, always “administrator”
    let status: String
    
    /// Information about the user
    let user: User
    
    /// True, if the bot is allowed to edit administrator privileges of that user
    let canBeEdited: Bool
    
    /// True, if the user's presence in the chat is hidden
    let isAnonymous: Bool
    
    let canManageChat: Bool
    let canDeleteMessages: Bool
    let canManageVideoChats: Bool
    let canRestrictMembers: Bool
    let canPromoteMembers: Bool
    let canChangeInfo: Bool
    let canInviteUsers: Bool
    let canPostStories: Bool
    let canEditStories: Bool
    let canDeleteStories: Bool
    
    let canPostMessages: Bool?
    let canEditMessages: Bool?
    let canPinMessages: Bool?
    let canManageTopics: Bool?
    let canManageDirectMessages: Bool?
    let canManageTags: Bool?
    
    /// Optional. Custom title for this user
    let customTitle: String?
}
