import Foundation

/// Describes a clickable area on a story media.
struct StoryArea: TelegramEntity {
    
    /// Position of the area
    let position: StoryAreaPosition
    
    /// Type of the area
    let type: StoryAreaType
}
