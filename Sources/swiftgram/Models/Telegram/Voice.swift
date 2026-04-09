import Foundation

/// This object represents a voice note.
struct Voice: TelegramEntity {
    
    /// Identifier for this file, which can be used to download or reuse the file
    let fileId: String
    
    /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
    let fileUniqueId: String
    
    /// Duration of the audio in seconds as defined by the sender
    let duration: Int
    
    /// Optional. MIME type of the file as defined by the sender
    let mimeType: String?
    
    /// Optional. File size in bytes.
    let fileSize: Int?
}

