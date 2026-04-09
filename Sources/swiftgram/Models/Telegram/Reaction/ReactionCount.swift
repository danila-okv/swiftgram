import Foundation

/// Represents a reaction added to a message along with the number of times it was added.
struct ReactionCount: TelegramEntity {
    
    /// Type of the reaction
    let type: ReactionType
    
    /// Number of times the reaction was added
    let totalCount: Int
}
