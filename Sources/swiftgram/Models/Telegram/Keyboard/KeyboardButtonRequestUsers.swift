import Foundation

/// This object defines the criteria used to request suitable users.
struct KeyboardButtonRequestUsers: TelegramEntity {
    
    /// Signed 32-bit identifier of the request.
    let requestId: Int
    
    /// Optional. Pass True to request bots, pass False to request regular users.
    let userIsBot: Bool?
    
    /// Optional. Pass True to request premium users, pass False to request non-premium users.
    let userIsPremium: Bool?
    
    /// Optional. The maximum number of users to be selected; 1-10.
    let maxQuantity: Int?
    
    /// Optional. Pass True to request the users' first and last names
    let requestName: Bool?
    
    /// Optional. Pass True to request the users' usernames
    let requestUsername: Bool?
    
    /// Optional. Pass True to request the users' photos
    let requestPhoto: Bool?
}
