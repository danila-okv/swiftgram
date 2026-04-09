import Foundation

/// This object describes a message that was deleted or is otherwise inaccessible to the bot.
struct InaccessibleMessage: TelegramEntity {
    
    /// Chat the message belonged to
    let chat: Chat
    
    /// Unique message identifier inside the chat
    let messageId: Int
    
    /// Always 0. The field can be used to differentiate regular and inaccessible messages.
    let date: Int
}
