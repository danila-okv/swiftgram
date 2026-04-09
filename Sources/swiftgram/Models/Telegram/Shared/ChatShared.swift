import Foundation

/// This object contains information about a chat that was shared with the bot using a KeyboardButtonRequestChat button.
struct ChatShared: TelegramEntity {
    
    /// Identifier of the request
    let requestId: Int
    
    /// Identifier of the shared chat.
    let chatId: Int
    
    /// Optional. Title of the chat, if the title was requested by the bot.
    let title: String?
    
    /// Optional. Username of the chat, if the username was requested by the bot and available.
    let username: String?
    
    /// Optional. Available sizes of the chat photo, if the photo was requested by the bot
    let photo: [PhotoSize]?
}
