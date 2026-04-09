import Foundation

/// Represents the rights of a business bot.
struct BusinessBotRights: TelegramEntity {
    
    let canReply: Bool?
    let canReadMessages: Bool?
    let canDeleteSentMessages: Bool?
    let canDeleteAllMessages: Bool?
    let canEditName: Bool?
    let canEditBio: Bool?
    let canEditProfilePhoto: Bool?
    let canEditUsername: Bool?
    let canChangeGiftSettings: Bool?
    let canViewGiftsAndStars: Bool?
    let canConvertGiftsToStars: Bool?
    let canTransferAndUpgradeGifts: Bool?
    let canTransferStars: Bool?
    let canManageStories: Bool?
}
