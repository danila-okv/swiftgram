import Foundation

/// Describes a regular gift owned by a user or a chat.
struct OwnedGiftRegular: TelegramEntity {
    let type: String
    let gift: Gift
    let ownedGiftId: String?
    let senderUser: User?
    let sendDate: Int
    let text: String?
    let entities: [MessageEntity]?
    let isPrivate: Bool?
    let isSaved: Bool?
    let canBeUpgraded: Bool?
    let wasRefunded: Bool?
    let convertStarCount: Int?
    let prepaidUpgradeStarCount: Int?
    let isUpgradeSeparate: Bool?
    let uniqueGiftNumber: Int?
}
