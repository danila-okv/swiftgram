protocol TelegramEntity: Codable, Sendable { }

extension Array: TelegramEntity where Element: TelegramEntity { }
