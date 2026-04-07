enum TelegramError: Error {
    case apiError(String = "API error")
    case networkError
    case decodingError(Error)
    case badStatusCode(Int, description: String = "")
}
