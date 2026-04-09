import Foundation

/// The paid media isn't available before the payment.
struct PaidMediaPreview: TelegramEntity {
    
    /// Type of the paid media, always “preview”
    let type: String
    
    /// Optional. Media width as defined by the sender
    let width: Int?
    
    /// Optional. Media height as defined by the sender
    let height: Int?
    
    /// Optional. Duration of the media in seconds as defined by the sender
    let duration: Int?
}
