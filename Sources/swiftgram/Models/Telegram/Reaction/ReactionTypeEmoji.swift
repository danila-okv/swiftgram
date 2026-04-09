import Foundation

/// The reaction is based on an emoji.
struct ReactionTypeEmoji: TelegramEntity {
    
    /// Type of the reaction, always “emoji”
    let type: String
    
    /// Reaction emoji.
    let emoji: String
}
