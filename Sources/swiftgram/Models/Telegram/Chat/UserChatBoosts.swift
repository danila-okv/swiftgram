import Foundation

/// This object represents a list of boosts added to a chat by a user.
struct UserChatBoosts: TelegramEntity {
    
    /// The list of boosts added to the chat by the user
    let boosts: [ChatBoost]
}
