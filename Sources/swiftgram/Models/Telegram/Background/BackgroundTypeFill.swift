import Foundation

/// The background is automatically filled based on the selected colors.
struct BackgroundTypeFill: TelegramEntity {
    
    /// Type of the background, always “fill”
    let type: String
    
    /// The background fill
    let fill: BackgroundFill
    
    /// Dimming of the background in dark themes, as a percentage; 0-100
    let darkThemeDimming: Int
}
