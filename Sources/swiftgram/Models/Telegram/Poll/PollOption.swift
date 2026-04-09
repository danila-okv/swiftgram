import Foundation

/// This object contains information about one answer option in a poll.
struct PollOption: TelegramEntity {
    
    /// Unique identifier of the option, persistent on option addition and deletion
    let persistentId: String
    
    /// Option text, 1-100 characters
    let text: String
    
    /// Optional. Special entities that appear in the option text.
    let textEntities: [MessageEntity]?
    
    /// Number of users who voted for this option; may be 0 if unknown
    let voterCount: Int
    
    /// Optional. User who added the option; omitted if the option wasn't added by a user after poll creation
    let addedByUser: User?
    
    /// Optional. Chat that added the option; omitted if the option wasn't added by a chat after poll creation
    let addedByChat: Chat?
    
    /// Optional. Point in time (Unix timestamp) when the option was added; omitted if the option existed in the original poll
    let additionDate: Int?
}
