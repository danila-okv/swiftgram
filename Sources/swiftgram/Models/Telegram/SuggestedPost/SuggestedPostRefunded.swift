import Foundation

/// Describes a service message about a payment refund for a suggested post.
struct SuggestedPostRefunded: TelegramEntity {
    
    /// Optional. Message containing the suggested post.
    let suggestedPostMessage: Message?
    
    /// Reason for the refund. Currently, one of “post_deleted” or “payment_refunded”
    let reason: String
}
