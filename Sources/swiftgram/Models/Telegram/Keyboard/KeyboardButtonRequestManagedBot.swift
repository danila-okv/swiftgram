import Foundation

/// This object defines the parameters for the creation of a managed bot.
struct KeyboardButtonRequestManagedBot: TelegramEntity {
    
    /// Signed 32-bit identifier of the request.
    let requestId: Int
    
    /// Optional. Suggested name for the bot
    let suggestedName: String?
    
    /// Optional. Suggested username for the bot
    let suggestedUsername: String?
}
