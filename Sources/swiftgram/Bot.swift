import Foundation

public actor Bot {
    let token: String
    var lastUpdateId: Int?
    
    public init(token: String) {
        self.token = token
    }
    
    internal init(token: String, network: NetworkSession) {
        self.token = token
    }
}
