import Foundation

/// Describes a service message about the rejection of a suggested post.
struct SuggestedPostDeclined: TelegramEntity {
    
    /// Optional. Message containing the suggested post.
    let suggestedPostMessage: Message?
    
    /// Optional. Comment with which the post was declined
    let comment: String?
}
