import Foundation

/// The background is a gradient fill.
struct BackgroundFillGradient: TelegramEntity {
    
    /// Type of the background fill, always “gradient”
    let type: String = "gradient"
    
    /// Top color of the gradient in the RGB24 format
    let topColor: Int
    
    /// Bottom color of the gradient in the RGB24 format
    let bottomColor: Int
    
    /// Clockwise rotation angle of the background fill in degrees; 0-359
    let rotationAngle: Int
}
