import Foundation

/// Describes a transaction with a user.
struct TransactionPartnerUser: TelegramEntity {
    let type: String = "user"
    let transactionType: String
    let user: User
    let affiliate: AffiliateInfo?
    let invoicePayload: String?
    let subscriptionPeriod: Int?
    let paidMedia: [PaidMedia]?
    let paidMediaPayload: String?
    let gift: Gift?
    let premiumSubscriptionDuration: Int?
}

/// Describes a transaction with a chat.
struct TransactionPartnerChat: TelegramEntity {
    let type: String = "chat"
    let chat: Chat
    let gift: Gift?
}

/// Describes the affiliate program that issued the commission.
struct TransactionPartnerAffiliateProgram: TelegramEntity {
    let type: String = "affiliate_program"
    let sponsorUser: User?
    let commissionPerMille: Int
}

/// Describes a withdrawal transaction with Fragment.
struct TransactionPartnerFragment: TelegramEntity {
    let type: String = "fragment"
    let withdrawalState: RevenueWithdrawalState?
}
