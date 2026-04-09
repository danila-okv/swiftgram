import Foundation

/// Describes a service message about the chat owner leaving the chat.
struct ChatOwnerLeft: TelegramEntity {
    
    /// Optional. The user which will be the new owner of the chat
    let newOwner: User?
}
