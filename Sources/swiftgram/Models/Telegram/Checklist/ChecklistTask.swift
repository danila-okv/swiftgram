import Foundation

/// Describes a task in a checklist.
struct ChecklistTask: TelegramEntity {
    
    /// Unique identifier of the task
    let id: Int
    
    /// Text of the task
    let text: String
    
    /// Optional. Special entities that appear in the task text
    let textEntities: [MessageEntity]?
    
    /// Optional. User that completed the task; omitted if the task wasn't completed by a user
    let completedByUser: User?
    
    /// Optional. Chat that completed the task; omitted if the task wasn't completed by a chat
    let completedByChat: Chat?
    
    /// Optional. Point in time (Unix timestamp) when the task was completed; 0 if the task wasn't completed
    let completionDate: Int?
}
