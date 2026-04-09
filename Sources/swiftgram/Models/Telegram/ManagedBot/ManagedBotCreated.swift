import Foundation

/// This object contains information about the bot that was created to be managed by the current bot.
struct ManagedBotCreated: TelegramEntity {
    
    /// Information about the bot.
    let bot: User
}
