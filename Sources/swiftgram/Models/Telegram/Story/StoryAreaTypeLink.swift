import Foundation

/// Describes a story area pointing to an HTTP or tg:// link.
struct StoryAreaTypeLink: TelegramEntity {
    
    /// Type of the area, always “link”
    let type: String
    
    /// HTTP or tg:// URL to be opened when the area is clicked
    let url: String
}
