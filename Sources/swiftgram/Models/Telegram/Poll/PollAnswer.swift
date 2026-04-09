import Foundation

/// This object represents an answer of a user in a non-anonymous poll.
struct PollAnswer: TelegramEntity {
    
    /// Unique poll identifier
    let pollId: String
    
    /// Optional. The chat that changed the answer to the poll, if the voter is anonymous
    let voterChat: Chat?
    
    /// Optional. The user that changed the answer to the poll, if the voter isn't anonymous
    let user: User?
    
    /// 0-based identifiers of chosen answer options. May be empty if the vote was retracted.
    let optionIds: [Int]
    
    /// Persistent identifiers of the chosen answer options. May be empty if the vote was retracted.
    let optionPersistentIds: [String]
}
