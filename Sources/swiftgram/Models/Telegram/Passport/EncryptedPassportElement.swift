import Foundation

/// Describes documents or other Telegram Passport elements shared with the bot.
struct EncryptedPassportElement: TelegramEntity {
    
    /// Element type.
    let type: String
    
    /// Optional. Base64-encoded encrypted Telegram Passport element data
    let data: String?
    
    /// Optional. User's verified phone number
    let phoneNumber: String?
    
    /// Optional. User's verified email address
    let email: String?
    
    /// Optional. Array of encrypted files with documents
    let files: [PassportFile]?
    
    /// Optional. Encrypted file with the front side of the document
    let frontSide: PassportFile?
    
    /// Optional. Encrypted file with the reverse side of the document
    let reverseSide: PassportFile?
    
    /// Optional. Encrypted file with the selfie of the user holding a document
    let selfie: PassportFile?
    
    /// Optional. Array of encrypted files with translated versions of documents
    let translation: [PassportFile]?
    
    /// Base64-encoded element hash
    let hash: String
}
