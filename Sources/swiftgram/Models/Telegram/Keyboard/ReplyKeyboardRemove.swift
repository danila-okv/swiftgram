import Foundation

/// Telegram clients will remove the current custom keyboard and display the default letter-keyboard.
struct ReplyKeyboardRemove: TelegramEntity {
    
    /// Requests clients to remove the custom keyboard
    let removeKeyboard: Bool
    
    /// Optional. Use this parameter if you want to remove the keyboard for specific users only.
    let selective: Bool?
}
