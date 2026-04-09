import Foundation

/// Describes data sent from a Web App to the bot.
struct WebAppData: TelegramEntity {
    
    /// The data. Be aware that a bad client can send arbitrary data in this field.
    let data: String
    
    /// Text of the web_app keyboard button from which the Web App was opened.
    let buttonText: String
}
