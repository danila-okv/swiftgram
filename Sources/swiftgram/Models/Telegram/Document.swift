import Foundation

/// This object represents a general file (as opposed to photos, voice messages and audio files).
struct Document: TelegramEntity {
    
    /// Identifier for this file, which can be used to download or reuse the file
    let fileId: String
    
    /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
    let fileUniqueId: String
    
    /// Optional. Document thumbnail as defined by the sender
    let thumbnail: PhotoSize?
    
    /// Optional. Original filename as defined by the sender
    let fileName: String?
    
    /// Optional. MIME type of the file as defined by the sender
    let mimeType: String?
    
    /// Optional. File size in bytes.
    let fileSize: Int?
}
