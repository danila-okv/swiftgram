import Foundation

/// This object represents a boost removed from a chat.
struct ChatBoostRemoved: TelegramEntity {
    let chat: Chat
    let boostId: String
    let removeDate: Int
    let source: ChatBoostSource
}
