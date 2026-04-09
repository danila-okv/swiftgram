import Foundation

/// Describes an inline message to be sent by a user of a Mini App.
struct PreparedInlineMessage: TelegramEntity {
    
    /// Unique identifier of the prepared message
    let id: String
    
    /// Expiration date of the prepared message, in Unix time.
    let expirationDate: Int
}
