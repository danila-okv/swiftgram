import Foundation

/// Represents an invite link for a chat.
struct ChatInviteLink: TelegramEntity {
    
    /// The invite link.
    let inviteLink: String
    
    /// Creator of the link
    let creator: User
    
    /// True, if users joining the chat via the link need to be approved by chat administrators
    let createsJoinRequest: Bool
    
    /// True, if the link is primary
    let isPrimary: Bool
    
    /// True, if the link is revoked
    let isRevoked: Bool
    
    /// Optional. Invite link name
    let name: String?
    
    /// Optional. Point in time (Unix timestamp) when the link will expire or has been expired
    let expireDate: Int?
    
    /// Optional. The maximum number of users that can be members of the chat simultaneously
    let memberLimit: Int?
    
    /// Optional. Number of pending join requests created using this link
    let pendingJoinRequestCount: Int?
    
    /// Optional. The number of seconds the subscription will be active for before the next payment
    let subscriptionPeriod: Int?
    
    /// Optional. The amount of Telegram Stars a user must pay initially and after each subsequent subscription period
    let subscriptionPrice: Int?
}   
