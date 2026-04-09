import Foundation

/// Represents the rights of an administrator in a chat.
struct ChatAdministratorRights: TelegramEntity {
    
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
    
    /// Optional. True, if the administrator can post messages in the channel; for channels only
    let canPostMessages: Bool?
    
    /// Optional. True, if the administrator can edit messages of other users; for channels only
    let canEditMessages: Bool?
    
    /// Optional. True, if the user is allowed to pin messages; for groups and supergroups only
    let canPinMessages: Bool?
    
    /// Optional. True, if the user is allowed to manage forum topics; for supergroups only
    let canManageTopics: Bool?
    
    /// Optional. True, if the administrator can manage direct messages of the channel; for channels only
    let canManageDirectMessages: Bool?
    
    /// Optional. True, if the administrator can edit the tags of regular members; for groups and supergroups only.
    let canManageTags: Bool?
}
