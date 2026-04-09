import Foundation

/// Describes a service message about an ownership change in the chat.
struct ChatOwnerChanged: TelegramEntity {
    
    /// The new owner of the chat
    let newOwner: User
}
