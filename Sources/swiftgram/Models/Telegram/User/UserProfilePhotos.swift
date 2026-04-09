import Foundation

/// This object represent a user's profile pictures.
struct UserProfilePhotos: TelegramEntity {
    
    /// Total number of profile pictures the target user has
    let totalCount: Int
    
    /// Requested profile pictures (in up to 4 sizes each)
    let photos: [[PhotoSize]]
}
