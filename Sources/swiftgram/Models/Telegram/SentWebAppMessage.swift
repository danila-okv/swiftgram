import Foundation

/// Describes an inline message sent by a Web App on behalf of a user.
struct SentWebAppMessage: TelegramEntity {
    
    /// Optional. Identifier of the sent inline message.
    let inlineMessageId: String?
}
