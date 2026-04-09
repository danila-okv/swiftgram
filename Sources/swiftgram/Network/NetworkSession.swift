import Foundation

protocol NetworkSession {
    func data(for request: URLRequest) async throws -> (Data, URLResponse)
    func download(for request: URLRequest) async throws -> (Data, URLResponse)
    func upload(for request: URLRequest) async throws -> (Data, URLResponse)
}


