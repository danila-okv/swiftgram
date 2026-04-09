import Foundation

/// Contains the list of gifts received and owned by a user or a chat.
struct OwnedGifts: TelegramEntity {
    
    /// The total number of gifts owned by the user or the chat
    let totalCount: Int
    
    /// The list of gifts
    let gifts: [OwnedGift]
    
    /// Optional. Offset for the next request
    let nextOffset: String?
}
