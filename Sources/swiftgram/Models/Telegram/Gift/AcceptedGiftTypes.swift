import Foundation

/// This object describes the types of gifts that can be gifted to a user or a chat.
struct AcceptedGiftTypes: TelegramEntity {
    
    /// True, if unlimited regular gifts are accepted
    let unlimitedGifts: Bool
    
    /// True, if limited regular gifts are accepted
    let limitedGifts: Bool
    
    /// True, if unique gifts or gifts that can be upgraded for free are accepted
    let uniqueGifts: Bool
    
    /// True, if a Telegram Premium subscription is accepted
    let premiumSubscription: Bool
    
    /// True, if transfers of unique gifts from channels are accepted
    let giftsFromChannels: Bool
}
