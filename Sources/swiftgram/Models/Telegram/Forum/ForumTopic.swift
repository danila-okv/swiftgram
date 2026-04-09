import Foundation

/// This object represents a forum topic.
struct ForumTopic: TelegramEntity {
    
    /// Unique identifier of the forum topic
    let messageThreadId: Int
    
    /// Name of the topic
    let name: String
    
    /// Color of the topic icon in RGB format
    let iconColor: Int
    
    /// Optional. Unique identifier of the custom emoji shown as the topic icon
    let iconCustomEmojiId: String?
    
    /// Optional. True, if the name of the topic wasn't specified explicitly
    let isNameImplicit: Bool?
}
