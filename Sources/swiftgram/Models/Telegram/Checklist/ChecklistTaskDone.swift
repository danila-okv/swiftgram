import Foundation

/// Describes a service message about checklist tasks marked as done or not done.
struct ChecklistTasksDone: TelegramEntity {
    
    /// Optional. Message containing the checklist whose tasks were marked as done or not done.
    let checklistMessage: Message?
    
    /// Optional. Identifiers of the tasks that were marked as done
    let markedAsDoneTaskIds: [Int]?
    
    /// Optional. Identifiers of the tasks that were marked as not done
    let markedAsNotDoneTaskIds: [Int]?
}
