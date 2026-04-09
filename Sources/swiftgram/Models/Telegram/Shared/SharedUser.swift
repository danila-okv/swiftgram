import Foundation

/// This object contains information about a user that was shared with the bot using a KeyboardButtonRequestUsers button.
struct SharedUser: TelegramEntity {
    
    /// Identifier of the shared user.
    let userId: Int
    
    /// Optional. First name of the user, if the name was requested by the bot
    let firstName: String?
    
    /// Optional. Last name of the user, if the name was requested by the bot
    let lastName: String?
    
    /// Optional. Username of the user, if the username was requested by the bot
    let username: String?
    
    /// Optional. Available sizes of the chat photo, if the photo was requested by the bot
    let photo: [PhotoSize]?
}
