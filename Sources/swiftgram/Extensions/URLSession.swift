import Foundation

@available(macOS 12.0, *)
extension URLSession {
    func decode<Value: TelegramEntity>(_ request: Request<Value>, decoder: JSONDecoder = .init()) async throws -> Value {
        let (data, response) = try await self.data(for: request.urlRequest)
        
        guard let statusCode = (response as? HTTPURLResponse)?.statusCode else { throw TelegramError.networkError }
        
        let wrapper = try decoder.decode(TelegramWrapper<Value>.self, from: data)
        
        if (200...299).contains(statusCode) && wrapper.ok {
            if let entity = wrapper.result {
                return entity
            } else {
                throw TelegramError.apiError("Status code and Ok is success, but result is nil")
            }
        } else {
            if let description = wrapper.description {
                throw TelegramError.badStatusCode(statusCode, description: description)
            } else {
                throw TelegramError.badStatusCode(statusCode)
            }
        }
    }
}
