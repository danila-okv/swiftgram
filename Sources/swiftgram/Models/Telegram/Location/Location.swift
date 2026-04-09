import Foundation

/// This object represents a point on the map.
struct Location: TelegramEntity {
    
    /// Latitude as defined by the sender
    let latitude: Double
    
    /// Longitude as defined by the sender
    let longitude: Double
    
    /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
    let horizontalAccuracy: Double?
    
    /// Optional. Time relative to the message sending date, during which the location can be updated; in seconds.
    let livePeriod: Int?
    
    /// Optional. The direction in which user is moving, in degrees; 1-360.
    let heading: Int?
    
    /// Optional. The maximum distance for proximity alerts about approaching another chat member, in meters.
    let proximityAlertRadius: Int?
}
