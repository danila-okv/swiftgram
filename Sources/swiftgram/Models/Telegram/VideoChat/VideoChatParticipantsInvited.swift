import Foundation

/// This object represents a service message about new members invited to a video chat.
struct VideoChatParticipantsInvited: TelegramEntity {
    
    /// New members that were invited to the video chat
    let users: [User]
}
