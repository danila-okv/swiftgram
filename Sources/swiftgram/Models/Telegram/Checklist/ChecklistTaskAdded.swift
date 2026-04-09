import Foundation

/// Describes a service message about tasks added to a checklist.
struct ChecklistTasksAdded: TelegramEntity {
    
    /// Optional. Message containing the checklist to which the tasks were added.
    let checklistMessage: Message?
    
    /// List of tasks added to the checklist
    let tasks: [ChecklistTask]
}
