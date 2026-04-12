import Foundation

/// Represents the content of a venue message to be sent as the result of an inline query.
struct InputVenueMessageContent: TelegramEntity {
    
    /// Latitude of the venue in degrees
    let latitude: Double
    
    /// Longitude of the venue in degrees
    let longitude: Double
    
    /// Name of the venue
    let title: String
    
    /// Address of the venue
    let address: String
    
    /// Optional. Foursquare identifier of the venue, if known
    let foursquareId: String?
    
    /// Optional. Foursquare type of the venue, if known.
    let foursquareType: String?
    
    /// Optional. Google Places identifier of the venue
    let googlePlaceId: String?
    
    /// Optional. Google Places type of the venue.
    let googlePlaceType: String?
}
