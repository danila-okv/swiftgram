import Foundation

/// Describes a unique gift received and owned by a user or a chat.
struct OwnedGiftUnique: TelegramEntity {
    let type: String
    let gift: UniqueGift
    let ownedGiftId: String?
    let senderUser: User?
    let sendDate: Int
    let isSaved: Bool?
    let canBeTransferred: Bool?
    let transferStarCount: Int?
    let nextTransferDate: Int?
}
