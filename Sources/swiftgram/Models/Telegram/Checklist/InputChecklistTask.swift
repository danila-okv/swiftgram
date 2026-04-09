import Foundation

/// Describes a task to add to a checklist.
struct InputChecklistTask: TelegramEntity {
    
    /// Unique identifier of the task; must be positive and unique among all task identifiers currently present in the checklist
    let id: Int
    
    /// Text of the task; 1-100 characters after entities parsing
    let text: String
    
    /// Optional. Mode for parsing entities in the text.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the text, which can be specified instead of parse_mode.
    let textEntities: [MessageEntity]?
}
