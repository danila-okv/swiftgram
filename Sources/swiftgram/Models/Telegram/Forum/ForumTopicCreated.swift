import Foundation

/// This object represents a service message about a new forum topic created in the chat.
struct ForumTopicCreated: TelegramEntity {
    
    /// Name of the topic
    let name: String
    
    /// Color of the topic icon in RGB format
    let iconColor: Int
    
    /// Optional. Unique identifier of the custom emoji shown as the topic icon
    let iconCustomEmojiId: String?
    
    /// Optional. True, if the name of the topic wasn't specified explicitly by its creator and likely needs to be changed by the bot
    let isNameImplicit: Bool?
}
