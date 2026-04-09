import Foundation

/// Describes a service message about the approval of a suggested post.
struct SuggestedPostApproved: TelegramEntity {
    
    /// Optional. Message containing the suggested post.
    let suggestedPostMessage: Message?
    
    /// Optional. Amount paid for the post
    let price: SuggestedPostPrice?
    
    /// Date when the post will be published
    let sendDate: Int
}
