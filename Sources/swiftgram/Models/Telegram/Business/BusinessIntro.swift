import Foundation

/// Contains information about the start page settings of a Telegram Business account.
struct BusinessIntro: TelegramEntity {
    
    /// Optional. Title text of the business intro
    let title: String?
    
    /// Optional. Message text of the business intro
    let message: String?
    
    /// Optional. Sticker of the business intro
    let sticker: Sticker?
}
