import Foundation

/// Describes a story area containing weather information.
struct StoryAreaTypeWeather: TelegramEntity {
    
    /// Type of the area, always “weather”
    let type: String
    
    /// Temperature, in degree Celsius
    let temperature: Double
    
    /// Emoji representing the weather
    let emoji: String
    
    /// A color of the area background in the ARGB format
    let backgroundColor: Int
}
