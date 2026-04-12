import Foundation

/// Represents a location on a map.
struct InlineQueryResultLocation: TelegramEntity {
    
    /// Type of the result, must be location
    let type: String = "location"
    
    /// Unique identifier for this result, 1-64 Bytes
    let id: String
    
    /// Location latitude in degrees
    let latitude: Double
    
    /// Location longitude in degrees
    let longitude: Double
    
    /// Location title
    let title: String
    
    /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
    let horizontalAccuracy: Double?
    
    /// Optional. Period in seconds during which the location can be updated
    let livePeriod: Int?
    
    /// Optional. For live locations, a direction in which the user is moving, in degrees.
    let heading: Int?
    
    /// Optional. For live locations, a maximum distance for proximity alerts, in meters.
    let proximityAlertRadius: Int?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the location
    let inputMessageContent: InputMessageContent?
    
    /// Optional. Url of the thumbnail for the result
    let thumbnailUrl: String?
    
    /// Optional. Thumbnail width
    let thumbnailWidth: Int?
    
    /// Optional. Thumbnail height
    let thumbnailHeight: Int?
}
