import Foundation

/// Represents a result of an inline query that was chosen by the user and sent to their chat partner.
struct ChosenInlineResult: TelegramEntity {
    
    /// The unique identifier for the result that was chosen
    let resultId: String
    
    /// The user that chose the result
    let from: User
    
    /// Optional. Sender location, only for bots that require user location
    let location: Location?
    
    /// Optional. Identifier of the sent inline message.
    let inlineMessageId: String?
    
    /// The query that was used to obtain the result
    let query: String
}
