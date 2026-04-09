import Foundation

/// This object represents a bot command.
struct BotCommand: TelegramEntity {
    
    /// Text of the command; 1-32 characters.
    let command: String
    
    /// Description of the command; 1-256 characters.
    let description: String
}
