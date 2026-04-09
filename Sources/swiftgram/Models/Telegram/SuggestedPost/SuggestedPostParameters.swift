import Foundation

/// Contains parameters of a post that is being suggested by the bot.
struct SuggestedPostParameters: TelegramEntity {
    
    /// Optional. Proposed price for the post. If the field is omitted, then the post is unpaid.
    let price: SuggestedPostPrice?
    
    /// Optional. Proposed send date of the post.
    let sendDate: Int?
}
