import Foundation

/// Describes a service message about a change in the price of direct messages sent to a channel chat.
struct DirectMessagePriceChanged: TelegramEntity {
    
    /// True, if direct messages are enabled for the channel chat; false otherwise
    let areDirectMessagesEnabled: Bool
    
    /// Optional. The new number of Telegram Stars that must be paid by users for each direct message sent to the channel.
    let directMessageStarCount: Int?
}
