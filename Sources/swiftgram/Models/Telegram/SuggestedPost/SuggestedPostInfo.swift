import Foundation

/// State of the suggested post.
enum SuggestedPostState: String, Codable {
    case pending
    case approved
    case declined
}

/// Contains information about a suggested post.
struct SuggestedPostInfo: TelegramEntity {
    
    /// State of the suggested post. Currently, it can be one of “pending”, “approved”, “declined”.
    let state: SuggestedPostState
    
    /// Optional. Proposed price of the post. If the field is omitted, then the post is unpaid.
    let price: SuggestedPostPrice?
    
    /// Optional. Proposed send date of the post.
    let sendDate: Int?
}
