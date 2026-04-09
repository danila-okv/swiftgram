import Foundation

/// The background is taken directly from a built-in chat theme.
struct BackgroundTypeChatTheme: TelegramEntity {
    
    /// Type of the background, always “chat_theme”
    let type: String
    
    /// Name of the chat theme, which is usually an emoji
    let themeName: String
}
