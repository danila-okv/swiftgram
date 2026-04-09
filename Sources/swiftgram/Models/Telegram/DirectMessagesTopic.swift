import Foundation

/// Describes a topic of a direct messages chat.
struct DirectMessagesTopic: TelegramEntity {
    
    /// Unique identifier of the topic.
    let topicId: Int
    
    /// Optional. Information about the user that created the topic. Currently, it is always present.
    let user: User?
}
