import Foundation

/// This object contains information about the users whose identifiers were shared with the bot using a KeyboardButtonRequestUsers button.
struct UsersShared: TelegramEntity {
    
    /// Identifier of the request
    let requestId: Int
    
    /// Information about users shared with the bot.
    let users: [SharedUser]
}
