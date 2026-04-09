import Foundation

/// Upon receiving a message with this object, Telegram clients will display a reply interface to the user.
struct ForceReply: TelegramEntity {
    
    /// Shows reply interface to the user
    let forceReply: Bool
    
    /// Optional. The placeholder to be shown in the input field when the reply is active; 1-64 characters
    let inputFieldPlaceholder: String?
    
    /// Optional. Use this parameter if you want to force reply from specific users only.
    let selective: Bool?
}
