import Foundation

/// Describes the birthdate of a user.
struct Birthdate: TelegramEntity {
    
    /// Day of the user's birth; 1-31
    let day: Int
    
    /// Month of the user's birth; 1-12
    let month: Int
    
    /// Optional. Year of the user's birth
    let year: Int?
}
