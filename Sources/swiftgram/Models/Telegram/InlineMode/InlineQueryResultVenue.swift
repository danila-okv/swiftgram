import Foundation

/// Represents a venue.
struct InlineQueryResultVenue: Encodable {
    
    /// Type of the result, must be venue
    let type: String = "venue"
    
    /// Unique identifier for this result, 1-64 Bytes
    let id: String
    
    /// Latitude of the venue location in degrees
    let latitude: Double
    
    /// Longitude of the venue location in degrees
    let longitude: Double
    
    /// Title of the venue
    let title: String
    
    /// Address of the venue
    let address: String
    
    /// Optional. Foursquare identifier of the venue if known
    let foursquareId: String?
    
    /// Optional. Foursquare type of the venue, if known.
    let foursquareType: String?
    
    /// Optional. Google Places identifier of the venue
    let googlePlaceId: String?
    
    /// Optional. Google Places type of the venue.
    let googlePlaceType: String?
    
    /// Optional. Inline keyboard attached to the message
    let replyMarkup: InlineKeyboardMarkup?
    
    /// Optional. Content of the message to be sent instead of the venue
    let inputMessageContent: InputMessageContent?
    
    /// Optional. Url of the thumbnail for the result
    let thumbnailUrl: String?
    
    /// Optional. Thumbnail width
    let thumbnailWidth: Int?
    
    /// Optional. Thumbnail height
    let thumbnailHeight: Int?
}
