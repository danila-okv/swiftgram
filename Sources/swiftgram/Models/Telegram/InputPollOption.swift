import Foundation

/// This object contains information about one answer option in a poll to be sent.
struct InputPollOption: TelegramEntity {
    
    /// Option text, 1-100 characters
    let text: String
    
    /// Optional. Mode for parsing entities in the text.
    let textParseMode: String?
    
    /// Optional. A JSON-serialized list of special entities that appear in the poll option text.
    let textEntities: [MessageEntity]?
}
