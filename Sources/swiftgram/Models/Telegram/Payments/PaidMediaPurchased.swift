import Foundation

/// This object contains information about a paid media purchase.
struct PaidMediaPurchased: TelegramEntity {
    
    /// User who purchased the media
    let from: User
    
    /// Bot-specified paid media payload
    let paidMediaPayload: String
}
