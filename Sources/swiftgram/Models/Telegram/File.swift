import Foundation

/// This object represents a file ready to be downloaded.
struct File: TelegramEntity {
    
    /// Identifier for this file, which can be used to download or reuse the file
    let fileId: String
    
    /// Unique identifier for this file, which is supposed to be the same over time and for different bots.
    let fileUniqueId: String
    
    /// Optional. File size in bytes.
    let fileSize: Int?
    
    /// Optional. File path. Use https://api.telegram.org/file/bot<token>/<file_path> to get the file.
    let filePath: String?
}
