import Foundation

enum HttpMethod: Equatable {
    case get([URLQueryItem])
    case put(Data?)
    case post(Data?)
    case delete
    case head
    
    var name: String {
        switch self {
        case .get: "GET"
        case .put: "PUT"
        case .post: "POST"
        case .delete: "DELETE"
        case .head: "HEAD"
        }
    }
}
