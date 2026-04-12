import Foundation

/// Represents the content of a location message to be sent as the result of an inline query.
struct InputLocationMessageContent: TelegramEntity {
    
    /// Latitude of the location in degrees
    let latitude: Double
    
    /// Longitude of the location in degrees
    let longitude: Double
    
    /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
    let horizontalAccuracy: Double?
    
    /// Optional. Period in seconds during which the location can be updated
    let livePeriod: Int?
    
    /// Optional. For live locations, a direction in which the user is moving, in degrees.
    let heading: Int?
    
    /// Optional. For live locations, a maximum distance for proximity alerts, in meters.
    let proximityAlertRadius: Int?
}
