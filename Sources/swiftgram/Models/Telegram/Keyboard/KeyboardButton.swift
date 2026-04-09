import Foundation

/// Style of the button. Must be one of “danger” (red), “success” (green) or “primary” (blue).
enum KeyboardButtonStyle: String, Codable {
    case danger
    case success
    case primary
}

/// This object represents one button of the reply keyboard.
struct KeyboardButton: TelegramEntity {
    
    /// Text of the button.
    let text: String
    
    /// Optional. Unique identifier of the custom emoji shown before the text of the button.
    let iconCustomEmojiId: String?
    
    /// Optional. Style of the button.
    let style: KeyboardButtonStyle?
    
    /// Optional. If specified, pressing the button will open a list of suitable users.
    let requestUsers: KeyboardButtonRequestUsers?
    
    /// Optional. If specified, pressing the button will open a list of suitable chats.
    let requestChat: KeyboardButtonRequestChat?
    
    /// Optional. If specified, pressing the button will ask the user to create and share a bot.
    let requestManagedBot: KeyboardButtonRequestManagedBot?
    
    /// Optional. If True, the user's phone number will be sent as a contact.
    let requestContact: Bool?
    
    /// Optional. If True, the user's current location will be sent.
    let requestLocation: Bool?
    
    /// Optional. If specified, the user will be asked to create a poll.
    let requestPoll: KeyboardButtonPollType?
    
    /// Optional. If specified, the described Web App will be launched.
    let webApp: WebAppInfo?
}
