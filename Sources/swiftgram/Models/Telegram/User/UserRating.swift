import Foundation

/// This object describes the rating of a user based on their Telegram Star spendings.
struct UserRating: TelegramEntity {
    
    /// Current level of the user
    let level: Int
    
    /// Numerical value of the user's rating
    let rating: Int
    
    /// The rating value required to get the current level
    let currentLevelRating: Int
    
    /// Optional. The rating value required to get to the next level
    let nextLevelRating: Int?
}
