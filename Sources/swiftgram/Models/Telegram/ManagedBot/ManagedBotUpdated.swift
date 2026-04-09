import Foundation

/// This object contains information about the creation, token update, or owner update of a bot that is managed by the current bot.
struct ManagedBotUpdated: TelegramEntity {
    
    /// User that created the bot
    let user: User
    
    /// Information about the bot.
    let bot: User
}
