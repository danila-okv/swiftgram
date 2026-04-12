import Foundation

/// Represents a Game.
struct InlineQueryResultGame: Encodable {
    
    /// Type of the result, must be game
    let type: String = "game"
    
    /// Unique identifier for this result, 1-64 bytes
    let id: String
    
    /// Short name of the game
    let gameShortName: String
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
}
