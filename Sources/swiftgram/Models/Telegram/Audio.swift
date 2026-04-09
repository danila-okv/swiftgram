import Foundation

/// This object represents an audio file to be treated as music by the Telegram clients.
struct Audio: TelegramEntity {
    
    /// Identifier for this file, which can be used to download or reuse the file
    let fileId: String
    
    /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
    let fileUniqueId: String
    
    /// Duration of the audio in seconds as defined by the sender
    let duration: Int
    
    /// Optional. Performer of the audio as defined by the sender or by audio tags
    let performer: String?
    
    /// Optional. Title of the audio as defined by the sender or by audio tags
    let title: String?
    
    /// Optional. Original filename as defined by the sender
    let fileName: String?
    
    /// Optional. MIME type of the file as defined by the sender
    let mimeType: String?
    
    /// Optional. File size in bytes.
    let fileSize: Int?
    
    /// Optional. Thumbnail of the album cover to which the music file belongs
    let thumbnail: PhotoSize?
}
