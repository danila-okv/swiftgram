import Foundation

/// This object represents one button of an inline keyboard.
struct InlineKeyboardButton: TelegramEntity {
    
    /// Label text on the button
    let text: String
    
    /// Optional. Unique identifier of the custom emoji shown before the text of the button.
    let iconCustomEmojiId: String?
    
    /// Optional. Style of the button.
    let style: KeyboardButtonStyle?
    
    /// Optional. HTTP or tg:// URL to be opened when the button is pressed.
    let url: String?
    
    /// Optional. Data to be sent in a callback query to the bot when the button is pressed
    let callbackData: String?
    
    /// Optional. Description of the Web App that will be launched when the user presses the button.
    let webApp: WebAppInfo?
    
    /// Optional. An HTTPS URL used to automatically authorize the user.
    let loginUrl: LoginUrl?
    
    /// Optional. If set, pressing the button will prompt the user to select one of their chats and insert the bot's username and the query.
    let switchInlineQuery: String?
    
    /// Optional. If set, pressing the button will insert the bot's username and the query in the current chat.
    let switchInlineQueryCurrentChat: String?
    
    /// Optional. If set, pressing the button will prompt the user to select one of their chats of the specified type.
    let switchInlineQueryChosenChat: SwitchInlineQueryChosenChat?
    
    /// Optional. Description of the button that copies the specified text to the clipboard.
    let copyText: CopyTextButton?
    
    /// Optional. Description of the game that will be launched when the user presses the button.
    let callbackGame: CallbackGame?
    
    /// Optional. Specify True, to send a Pay button.
    let pay: Bool?
}
