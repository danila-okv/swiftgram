import Foundation

/// Represents the content of a contact message to be sent as the result of an inline query.
struct InputContactMessageContent: TelegramEntity {
    
    /// Contact's phone number
    let phoneNumber: String
    
    /// Contact's first name
    let firstName: String
    
    /// Optional. Contact's last name
    let lastName: String?
    
    /// Optional. Additional data about the contact in the form of a vCard, 0-2048 bytes
    let vcard: String?
}
