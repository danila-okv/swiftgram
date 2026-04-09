import Foundation

/// The background is filled using the selected color.
struct BackgroundFillSolid: TelegramEntity {
    
    /// Type of the background fill, always “solid”
    let type: String = "solid"
    
    /// The color of the background fill in the RGB24 format
    let color: Int
}
