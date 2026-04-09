import Foundation

/// This object contains information about a chat boost.
struct ChatBoost: TelegramEntity {
    let boostId: String
    let addDate: Int
    let expirationDate: Int
    let source: ChatBoostSource
}
