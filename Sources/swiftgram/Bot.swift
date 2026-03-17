import Foundation

public class Bot {
    let token: String
    let network: NetworkSession
    
    public init(token: String) {
        self.token = token
        self.network = LiveSession()
    }
    
    internal init(token: String, network: NetworkSession) {
        self.token = token
        self.network = network
    }
    
    func getMe() async {
        let url = Endpoint.getMe.url(token: token)!
        
        if #available(macOS 12.0, *) {
            if let (data, _) = try? await URLSession.shared.data(from: url) {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                let user = try! decoder.decode(User.self, from: data)
            }
        } else {
            // Fallback on earlier versions
        }
    }
}
