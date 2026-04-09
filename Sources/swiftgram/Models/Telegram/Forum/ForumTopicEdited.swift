import Foundation

/// This object represents a service message about an edited forum topic.
struct ForumTopicEdited: TelegramEntity {
    
    /// Optional. New name of the topic, if it was edited
    let name: String?
    
    /// Optional. New identifier of the custom emoji shown as the topic icon, if it was edited; an empty string if the icon was removed
    let iconCustomEmojiId: String?
}
