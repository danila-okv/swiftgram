struct TelegramWrapper<T: TelegramEntity>: Decodable {
    let ok: Bool
    let result: T?
    let description: String?
}
