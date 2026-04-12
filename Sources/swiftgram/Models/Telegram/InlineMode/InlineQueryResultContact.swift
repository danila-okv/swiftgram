import Foundation

/// Represents a contact with a phone number.
struct InlineQueryResultContact: Encodable {
    
    /// Type of the result, must be contact
    let type: String = "contact"
    
    /// Unique identifier for this result, 1-64 Bytes
    let id: String
    
    /// Contact's phone number
    let phoneNumber: String
    
    /// Contact's first name
    let firstName: String
    
    /// Optional. Contact's last name
    let lastName: String?
    
    /// Optional. Additional data about the contact in the form of a vCard, 0-2048 bytes
    let vcard: String?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the contact
    let inputMessageContent: InputMessageContent?
    
    /// Optional. Url of the thumbnail for the result
    let thumbnailUrl: String?
    
    /// Optional. Thumbnail width
    let thumbnailWidth: Int?
    
    /// Optional. Thumbnail height
    let thumbnailHeight: Int?
}
