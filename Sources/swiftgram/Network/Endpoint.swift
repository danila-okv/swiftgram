//
//  Endpoint.swift
//  swiftgram
//
//  Created by Danila Okunev on 21.02.26.
//

import Foundation

enum Endpoint {
    case getMe
    case getUpdates(offset: Int?)
    
    func url(token: String) -> URL? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.telegram.org"
        components.path = "/bot\(token)/\(path)"
        
        return components.url
    }
    
    private var path: String {
        switch self {
        case .getMe: return "getMe"
        case .getUpdates: return "getUpdates"
        }
    }
    
    
}
