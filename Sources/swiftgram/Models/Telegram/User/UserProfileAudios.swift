import Foundation

/// This object represents the audios displayed on a user's profile.
struct UserProfileAudios: TelegramEntity {
    
    /// Total number of profile audios for the target user
    let totalCount: Int
    
    /// Requested profile audios
    let audios: [Audio]
}
