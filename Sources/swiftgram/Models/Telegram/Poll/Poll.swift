import Foundation

/// Poll type, currently can be “regular” or “quiz”
enum PollType: String, Codable {
    case regular
    case quiz
}

/// This object contains information about a poll.
struct Poll: TelegramEntity {
    
    /// Unique poll identifier
    let id: String
    
    /// Poll question, 1-300 characters
    let question: String
    
    /// Optional. Special entities that appear in the question.
    let questionEntities: [MessageEntity]?
    
    /// List of poll options
    let options: [PollOption]
    
    /// Total number of users that voted in the poll
    let totalVoterCount: Int
    
    /// True, if the poll is closed
    let isClosed: Bool
    
    /// True, if the poll is anonymous
    let isAnonymous: Bool
    
    /// Poll type, currently can be “regular” or “quiz”
    let type: PollType
    
    /// True, if the poll allows multiple answers
    let allowsMultipleAnswers: Bool
    
    /// True, if the poll allows to change the chosen answer options
    let allowsRevoting: Bool
    
    /// Optional. Array of 0-based identifiers of the correct answer options.
    let correctOptionIds: [Int]?
    
    /// Optional. Text that is shown when a user chooses an incorrect answer or taps on the lamp icon in a quiz-style poll, 0-200 characters
    let explanation: String?
    
    /// Optional. Special entities like usernames, URLs, bot commands, etc. that appear in the explanation
    let explanationEntities: [MessageEntity]?
    
    /// Optional. Amount of time in seconds the poll will be active after creation
    let openPeriod: Int?
    
    /// Optional. Point in time (Unix timestamp) when the poll will be automatically closed
    let closeDate: Int?
    
    /// Optional. Description of the poll; for polls inside the Message object only
    let description: String?
    
    /// Optional. Special entities like usernames, URLs, bot commands, etc. that appear in the description
    let descriptionEntities: [MessageEntity]?
}
