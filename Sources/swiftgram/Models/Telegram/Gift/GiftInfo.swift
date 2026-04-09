import Foundation

/// Describes a service message about a regular gift that was sent or received.
struct GiftInfo: TelegramEntity {
    
    /// Information about the gift
    let gift: Gift
    
    /// Optional. Unique identifier of the received gift for the bot
    let ownedGiftId: String?
    
    /// Optional. Number of Telegram Stars that can be claimed by the receiver
    let convertStarCount: Int?
    
    /// Optional. Number of Telegram Stars that were prepaid for the ability to upgrade the gift
    let prepaidUpgradeStarCount: Int?
    
    /// Optional. True, if the gift's upgrade was purchased after the gift was sent
    let isUpgradeSeparate: Bool?
    
    /// Optional. True, if the gift can be upgraded to a unique gift
    let canBeUpgraded: Bool?
    
    /// Optional. Text of the message that was added to the gift
    let text: String?
    
    /// Optional. Special entities that appear in the text
    let entities: [MessageEntity]?
    
    /// Optional. True, if the sender and gift text are shown only to the gift receiver
    let isPrivate: Bool?
    
    /// Optional. Unique number reserved for this gift when upgraded.
    let uniqueGiftNumber: Int?
}
