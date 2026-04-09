import Foundation

/// Describes a checklist to create.
struct InputChecklist: TelegramEntity {
    
    /// Title of the checklist; 1-255 characters after entities parsing
    let title: String
    
    /// Optional. Mode for parsing entities in the title.
    let parseMode: String?
    
    /// Optional. List of special entities that appear in the title, which can be specified instead of parse_mode.
    let titleEntities: [MessageEntity]?
    
    /// List of 1-30 tasks in the checklist
    let tasks: [InputChecklistTask]
    
    /// Optional. Pass True if other users can add tasks to the checklist
    let othersCanAddTasks: Bool?
    
    /// Optional. Pass True if other users can mark tasks as done or not done in the checklist
    let othersCanMarkTasksAsDone: Bool?
}
