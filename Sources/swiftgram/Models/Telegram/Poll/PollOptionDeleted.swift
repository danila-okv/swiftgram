import Foundation

/// Describes a service message about an option deleted from a poll.
struct PollOptionDeleted: TelegramEntity {
    
    /// Optional. Message containing the poll from which the option was deleted, if known.
    let pollMessage: MaybeInaccessibleMessage?
    
    /// Unique identifier of the deleted option
    let optionPersistentId: String
    
    /// Option text
    let optionText: String
    
    /// Optional. Special entities that appear in the option_text
    let optionTextEntities: [MessageEntity]?
}
