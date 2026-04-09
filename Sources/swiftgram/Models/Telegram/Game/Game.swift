import Foundation

/// This object represents a game. 
/// Use BotFather to create and edit games, their short names will act as unique identifiers.
struct Game: TelegramEntity {
    
    /// Title of the game
    let title: String
    
    /// Description of the game
    let description: String
    
    /// Photo that will be displayed in the game message in chats.
    let photo: [PhotoSize]
    
    /// Optional. Brief description of the game or high scores included in the game message.
    let text: String?
    
    /// Optional. Special entities that appear in text.
    let textEntities: [MessageEntity]?
    
    /// Optional. Animation that will be displayed in the game message in chats.
    let animation: Animation?
}
