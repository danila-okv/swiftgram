import Foundation

/// Describes a story area pointing to a suggested reaction.
struct StoryAreaTypeSuggestedReaction: TelegramEntity {
    
    /// Type of the area, always “suggested_reaction”
    let type: String
    
    /// Type of the reaction
    let reactionType: ReactionType
    
    /// Optional. Pass True if the reaction area has a dark background
    let isDark: Bool?
    
    /// Optional. Pass True if reaction area corner is flipped
    let isFlipped: Bool?
}
