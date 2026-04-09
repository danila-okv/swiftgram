import Foundation

/// Represents a location to which a chat is connected.
struct ChatLocation: TelegramEntity {
    
    /// The location to which the supergroup is connected. Can't be a live location.
    let location: Location
    
    /// Location address; 1-64 characters, as defined by the chat owner
    let address: String
}
