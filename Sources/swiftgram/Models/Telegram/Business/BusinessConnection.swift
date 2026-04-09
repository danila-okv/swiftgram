import Foundation

/// Describes the connection of the bot with a business account.
struct BusinessConnection: TelegramEntity {
    
    /// Unique identifier of the business connection
    let id: String
    
    /// Business account user that created the business connection
    let user: User
    
    /// Identifier of a private chat with the user
    let userChatId: Int
    
    /// Date the connection was established in Unix time
    let date: Int
    
    /// Optional. Rights of the business bot
    let rights: BusinessBotRights?
    
    /// True, if the connection is active
    let isEnabled: Bool
}
