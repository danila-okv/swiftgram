import Foundation

/// Describes data required for decrypting and authenticating EncryptedPassportElement.
struct EncryptedCredentials: TelegramEntity {
    
    /// Base64-encoded encrypted JSON-serialized data
    let data: String
    
    /// Base64-encoded data hash for data authentication
    let hash: String
    
    /// Base64-encoded secret, encrypted with the bot's public RSA key
    let secret: String
}
