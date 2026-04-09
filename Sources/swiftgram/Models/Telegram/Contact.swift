import Foundation

/// This object represents a phone contact.
struct Contact: TelegramEntity {
    
    /// Contact's phone number
    let phoneNumber: String
    
    /// Contact's first name
    let firstName: String
    
    /// Optional. Contact's last name
    let lastName: String?
    
    /// Optional. Contact's user identifier in Telegram.
    let userId: Int?
    
    /// Optional. Additional data about the contact in the form of a vCard
    let vcard: String?
}
