import Foundation

/// Represents a chat member that is under certain restrictions in the chat. Supergroups only.
struct ChatMemberRestricted: TelegramEntity {
    
    /// The member's status in the chat, always “restricted”
    let status: String
    
    /// Optional. Tag of the member
    let tag: String?
    
    /// Information about the user
    let user: User
    
    /// True, if the user is a member of the chat at the moment of the request
    let isMember: Bool
    
    let canSendMessages: Bool
    let canSendAudios: Bool
    let canSendDocuments: Bool
    let canSendPhotos: Bool
    let canSendVideos: Bool
    let canSendVideoNotes: Bool
    let canSendVoiceNotes: Bool
    let canSendPolls: Bool
    let canSendOtherMessages: Bool
    let canAddWebPagePreviews: Bool
    let canEditTag: Bool
    let canChangeInfo: Bool
    let canInviteUsers: Bool
    let canPinMessages: Bool
    let canManageTopics: Bool
    
    /// Date when restrictions will be lifted for this user; Unix time. If 0, then the user is restricted forever
    let untilDate: Int
}
