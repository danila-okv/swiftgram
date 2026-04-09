import Foundation

/// This object represents an animated emoji that displays a random value.
struct Dice: TelegramEntity {
    
    /// Emoji on which the dice throw animation is based
    let emoji: String
    
    /// Value of the dice, 1-6 for “🎲”, “🎯” and “🎳” base emoji, 1-5 for “🏀” and “⚽” base emoji, 1-64 for “🎰” base emoji
    let value: Int
}
