import Foundation

/// Describes Telegram Passport data shared with the bot by the user.
struct PassportData: TelegramEntity {
    
    /// Array with information about documents and other Telegram Passport elements
    let data: [EncryptedPassportElement]
    
    /// Encrypted credentials required to decrypt the data
    let credentials: EncryptedCredentials
}
