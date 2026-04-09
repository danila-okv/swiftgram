import Foundation

/// This object represents a file uploaded to Telegram Passport.
struct PassportFile: TelegramEntity {
    
    /// Identifier for this file, which can be used to download or reuse the file
    let fileId: String
    
    /// Unique identifier for this file
    let fileUniqueId: String
    
    /// File size in bytes
    let fileSize: Int
    
    /// Unix time when the file was uploaded
    let fileDate: Int
}
