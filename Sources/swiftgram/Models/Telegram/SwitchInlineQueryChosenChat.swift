import Foundation

/// This object represents an inline button that switches the current user to inline mode in a chosen chat.
struct SwitchInlineQueryChosenChat: TelegramEntity {
    
    /// Optional. The default inline query to be inserted in the input field.
    let query: String?
    
    /// Optional. True, if private chats with users can be chosen
    let allowUserChats: Bool?
    
    /// Optional. True, if private chats with bots can be chosen
    let allowBotChats: Bool?
    
    /// Optional. True, if group and supergroup chats can be chosen
    let allowGroupChats: Bool?
    
    /// Optional. True, if channel chats can be chosen
    let allowChannelChats: Bool?
}
