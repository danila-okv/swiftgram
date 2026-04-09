import Foundation

/// Describes actions that a non-administrator user is allowed to take in a chat.
struct ChatPermissions: TelegramEntity {
    
    let canSendMessages: Bool?
    let canSendAudios: Bool?
    let canSendDocuments: Bool?
    let canSendPhotos: Bool?
    let canSendVideos: Bool?
    let canSendVideoNotes: Bool?
    let canSendVoiceNotes: Bool?
    let canSendPolls: Bool?
    let canSendOtherMessages: Bool?
    let canAddWebPagePreviews: Bool?
    let canEditTag: Bool?
    let canChangeInfo: Bool?
    let canInviteUsers: Bool?
    let canPinMessages: Bool?
    let canManageTopics: Bool?
}
