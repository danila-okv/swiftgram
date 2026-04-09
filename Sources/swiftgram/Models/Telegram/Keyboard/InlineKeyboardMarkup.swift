import Foundation

/// This object represents an inline keyboard that appears right next to the message it belongs to.
struct InlineKeyboardMarkup: TelegramEntity {
    
    /// Array of button rows, each represented by an Array of InlineKeyboardButton objects
    let inlineKeyboard: [[InlineKeyboardButton]]
}
