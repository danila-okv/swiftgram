import Foundation

/// The background is a wallpaper in the JPEG format.
struct BackgroundTypeWallpaper: TelegramEntity {
    
    /// Type of the background, always “wallpaper”
    let type: String
    
    /// Document with the wallpaper
    let document: Document
    
    /// Dimming of the background in dark themes, as a percentage; 0-100
    let darkThemeDimming: Int
    
    /// Optional. True, if the wallpaper is downscaled to fit in a 450x450 square and then box-blurred with radius 12
    let isBlurred: Bool?
    
    /// Optional. True, if the background moves slightly when the device is tilted
    let isMoving: Bool?
}
