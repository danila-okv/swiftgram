import Foundation

/// This object represents a chat photo.
struct ChatPhoto: TelegramEntity {
    
    /// File identifier of small (160x160) chat photo.
    let smallFileId: String
    
    /// Unique file identifier of small (160x160) chat photo.
    let smallFileUniqueId: String
    
    /// File identifier of big (640x640) chat photo.
    let bigFileId: String
    
    /// Unique file identifier of big (640x640) chat photo.
    let bigFileUniqueId: String
}
