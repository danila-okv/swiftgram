import Foundation

/// This object defines the criteria used to request a suitable chat.
struct KeyboardButtonRequestChat: TelegramEntity {
    
    /// Signed 32-bit identifier of the request.
    let requestId: Int
    
    /// Pass True to request a channel chat, pass False to request a group or a supergroup chat.
    let chatIsChannel: Bool
    
    /// Optional. Pass True to request a forum supergroup, pass False to request a non-forum chat.
    let chatIsForum: Bool?
    
    /// Optional. Pass True to request a supergroup or a channel with a username.
    let chatHasUsername: Bool?
    
    /// Optional. Pass True to request a chat owned by the user.
    let chatIsCreated: Bool?
    
    /// Optional. Required administrator rights of the user in the chat.
    let userAdministratorRights: ChatAdministratorRights?
    
    /// Optional. Required administrator rights of the bot in the chat.
    let botAdministratorRights: ChatAdministratorRights?
    
    /// Optional. Pass True to request a chat with the bot as a member.
    let botIsMember: Bool?
    
    /// Optional. Pass True to request the chat's title
    let requestTitle: Bool?
    
    /// Optional. Pass True to request the chat's username
    let requestUsername: Bool?
    
    /// Optional. Pass True to request the chat's photo
    let requestPhoto: Bool?
}
