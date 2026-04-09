import Foundation

/// Describes a checklist.
struct Checklist: TelegramEntity {
    
    /// Title of the checklist
    let title: String
    
    /// Optional. Special entities that appear in the checklist title
    let titleEntities: [MessageEntity]?
    
    /// List of tasks in the checklist
    let tasks: [ChecklistTask]
    
    /// Optional. True, if users other than the creator of the list can add tasks to the list
    let othersCanAddTasks: Bool?
    
    /// Optional. True, if users other than the creator of the list can mark tasks as done or not done
    let othersCanMarkTasksAsDone: Bool?
}
