import Foundation

public actor Bot {
    let token: String
    let network: NetworkSession
    var lastUpdateId: Int?
    
    public init(token: String) {
        self.token = token
        self.network = LiveSession()
    }
    
    internal init(token: String, network: NetworkSession) {
        self.token = token
        self.network = network
    }
}
