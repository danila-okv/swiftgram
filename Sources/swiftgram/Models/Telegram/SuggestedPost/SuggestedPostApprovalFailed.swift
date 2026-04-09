import Foundation

/// Describes a service message about the failed approval of a suggested post.
struct SuggestedPostApprovalFailed: TelegramEntity {
    
    /// Optional. Message containing the suggested post whose approval has failed.
    let suggestedPostMessage: Message?
    
    /// Expected price of the post
    let price: SuggestedPostPrice
}
