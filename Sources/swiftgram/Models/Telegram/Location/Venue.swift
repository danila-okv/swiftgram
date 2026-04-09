import Foundation

/// This object represents a venue.
struct Venue: TelegramEntity {
    
    /// Venue location. Can't be a live location
    let location: Location
    
    /// Name of the venue
    let title: String
    
    /// Address of the venue
    let address: String
    
    /// Optional. Foursquare identifier of the venue
    let foursquareId: String?
    
    /// Optional. Foursquare type of the venue.
    let foursquareType: String?
    
    /// Optional. Google Places identifier of the venue
    let googlePlaceId: String?
    
    /// Optional. Google Places type of the venue.
    let googlePlaceType: String?
}
