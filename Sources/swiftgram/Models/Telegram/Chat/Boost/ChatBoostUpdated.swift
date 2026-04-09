import Foundation

/// This object represents a boost added to a chat or changed.
struct ChatBoostUpdated: TelegramEntity {
    let chat: Chat
    let boost: ChatBoost
}
