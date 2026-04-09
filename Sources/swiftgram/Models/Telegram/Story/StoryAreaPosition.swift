import Foundation

/// Describes the position of a clickable area within a story.
struct StoryAreaPosition: TelegramEntity {
    
    /// The abscissa of the area's center, as a percentage of the media width
    let xPercentage: Double
    
    /// The ordinate of the area's center, as a percentage of the media height
    let yPercentage: Double
    
    /// The width of the area's rectangle, as a percentage of the media width
    let widthPercentage: Double
    
    /// The height of the area's rectangle, as a percentage of the media height
    let heightPercentage: Double
    
    /// The clockwise rotation angle of the rectangle, in degrees; 0-360
    let rotationAngle: Double
    
    /// The radius of the rectangle corner rounding, as a percentage of the media width
    let cornerRadiusPercentage: Double
}
