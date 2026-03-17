import Foundation

protocol NetworkSession {
    func data(for request: URLRequest) async throws -> (Data, URLResponse)
    func download(for request: URLRequest) async throws -> (Data, URLResponse)
    func upload(for request: URLRequest) async throws -> (Data, URLResponse)
}

struct LiveSession: NetworkSession {
    func data(for request: URLRequest) async throws -> (Data, URLResponse) {
        <#code#>
    }
    
    func download(for request: URLRequest) async throws -> (Data, URLResponse) {
        <#code#>
    }
    
    func upload(for request: URLRequest) async throws -> (Data, URLResponse) {
        <#code#>
    }
}

struct MockSession: NetworkSession {
    func data(for request: URLRequest) async throws -> (Data, URLResponse) {
        <#code#>
    }
    
    func download(for request: URLRequest) async throws -> (Data, URLResponse) {
        <#code#>
    }
    
    func upload(for request: URLRequest) async throws -> (Data, URLResponse) {
        <#code#>
    }
}
