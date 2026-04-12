import Foundation

/// Type of the chat from which the inline query was sent.
enum InlineQueryChatType: String, Codable {
    case sender
    case privateChat = "private"
    case group
    case supergroup
    case channel
}

/// This object represents an incoming inline query.
struct InlineQuery: TelegramEntity {
    
    /// Unique identifier for this query
    let id: String
    
    /// Sender
    let from: User
    
    /// Text of the query (up to 256 characters)
    let query: String
    
    /// Offset of the results to be returned, can be controlled by the bot
    let offset: String
    
    /// Optional. Type of the chat from which the inline query was sent.
    let chatType: InlineQueryChatType?
    
    /// Optional. Sender location, only for bots that request user location
    let location: Location?
}
