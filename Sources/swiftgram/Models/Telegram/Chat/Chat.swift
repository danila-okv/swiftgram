enum ChatType: String, Codable {
    case `private`
    case group
    case supergroup
    case channel
}

struct Chat: TelegramEntity {
    let id: Int
    let type: ChatType
    let title: String?
    let username: String?
    let firstName: String?
    let lastName: String?
    let isForum: String?
    let isDirectMessages: Bool?
}
