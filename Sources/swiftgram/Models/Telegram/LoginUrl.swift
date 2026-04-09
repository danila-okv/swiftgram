import Foundation

/// This object represents a parameter of the inline keyboard button used to automatically authorize a user.
struct LoginUrl: TelegramEntity {
    
    /// An HTTPS URL to be opened with user authorization data added to the query string when the button is pressed.
    let url: String
    
    /// Optional. New text of the button in forwarded messages.
    let forwardText: String?
    
    /// Optional. Username of a bot, which will be used for user authorization.
    let botUsername: String?
    
    /// Optional. Pass True to request the permission for your bot to send messages to the user.
    let requestWriteAccess: Bool?
}
