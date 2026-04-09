import Foundation

/// Describes a story area pointing to a unique gift.
struct StoryAreaTypeUniqueGift: TelegramEntity {
    
    /// Type of the area, always “unique_gift”
    let type: String
    
    /// Unique name of the gift
    let name: String
}
