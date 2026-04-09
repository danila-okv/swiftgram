import Foundation

/// Describes the paid media added to a message.
struct PaidMediaInfo: TelegramEntity {
    
    /// The number of Telegram Stars that must be paid to buy access to the media
    let starCount: Int
    
    /// Information about the paid media
    let paidMedia: [PaidMedia]
}
