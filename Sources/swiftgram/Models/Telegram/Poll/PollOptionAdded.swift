import Foundation

/// Describes a service message about an option added to a poll.
struct PollOptionAdded: TelegramEntity {
    
    /// Optional. Message containing the poll to which the option was added, if known.
    let pollMessage: MaybeInaccessibleMessage?
    
    /// Unique identifier of the added option
    let optionPersistentId: String
    
    /// Option text
    let optionText: String
    
    /// Optional. Special entities that appear in the option_text
    let optionTextEntities: [MessageEntity]?
}
