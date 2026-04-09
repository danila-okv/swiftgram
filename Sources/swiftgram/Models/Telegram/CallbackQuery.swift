import Foundation

/// This object represents an incoming callback query from a callback button in an inline keyboard.
struct CallbackQuery: TelegramEntity {
    
    /// Unique identifier for this query
    let id: String
    
    /// Sender
    let from: User
    
    /// Optional. Message sent by the bot with the callback button that originated the query
    let message: MaybeInaccessibleMessage?
    
    /// Optional. Identifier of the message sent via the bot in inline mode
    let inlineMessageId: String?
    
    /// Global identifier, uniquely corresponding to the chat to which the message was sent.
    let chatInstance: String
    
    /// Optional. Data associated with the callback button.
    let data: String?
    
    /// Optional. Short name of a Game to be returned
    let gameShortName: String?
}
