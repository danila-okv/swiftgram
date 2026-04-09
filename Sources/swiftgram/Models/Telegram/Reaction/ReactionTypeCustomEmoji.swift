import Foundation

/// The reaction is based on a custom emoji.
struct ReactionTypeCustomEmoji: TelegramEntity {
    
    /// Type of the reaction, always “custom_emoji”
    let type: String
    
    /// Custom emoji identifier
    let customEmojiId: String
}
