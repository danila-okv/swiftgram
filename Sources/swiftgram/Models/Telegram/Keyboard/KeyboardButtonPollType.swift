import Foundation

/// This object represents type of a poll, which is allowed to be created and sent.
struct KeyboardButtonPollType: TelegramEntity {
    
    /// Optional. If quiz is passed, the user will be allowed to create only polls in the quiz mode.
    let type: String?
}
