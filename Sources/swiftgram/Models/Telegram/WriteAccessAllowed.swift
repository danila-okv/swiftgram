import Foundation

/// This object represents a service message about a user allowing a bot to write messages.
struct WriteAccessAllowed: TelegramEntity {
    
    /// Optional. True, if the access was granted after the user accepted an explicit request from a Web App
    let fromRequest: Bool?
    
    /// Optional. Name of the Web App, if the access was granted when the Web App was launched from a link
    let webAppName: String?
    
    /// Optional. True, if the access was granted when the bot was added to the attachment or side menu
    let fromAttachmentMenu: Bool?
}
