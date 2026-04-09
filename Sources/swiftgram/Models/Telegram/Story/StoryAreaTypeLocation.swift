import Foundation

/// Describes a story area pointing to a location.
struct StoryAreaTypeLocation: TelegramEntity {
    
    /// Type of the area, always “location”
    let type: String
    
    /// Location latitude in degrees
    let latitude: Double
    
    /// Location longitude in degrees
    let longitude: Double
    
    /// Optional. Address of the location
    let address: LocationAddress?
}
