import Foundation

/// This object represents a custom keyboard with reply options.
struct ReplyKeyboardMarkup: TelegramEntity {
    
    /// Array of button rows, each represented by an Array of KeyboardButton objects
    let keyboard: [[KeyboardButton]]
    
    /// Optional. Requests clients to always show the keyboard when the regular keyboard is hidden.
    let isPersistent: Bool?
    
    /// Optional. Requests clients to resize the keyboard vertically for optimal fit.
    let resizeKeyboard: Bool?
    
    /// Optional. Requests clients to hide the keyboard as soon as it's been used.
    let oneTimeKeyboard: Bool?
    
    /// Optional. The placeholder to be shown in the input field when the keyboard is active
    let inputFieldPlaceholder: String?
    
    /// Optional. Use this parameter if you want to show the keyboard to specific users only.
    let selective: Bool?
}
