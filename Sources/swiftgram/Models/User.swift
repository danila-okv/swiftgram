//
//  User.swift
//  swiftgram
//
//  Created by Danila Okunev on 21.02.26.
//

struct User: Codable {
    let id: Int64
    let isBot: Bool
    
    let firstName: String
    let lastName: String?
    let username: String?
    
    let languageCode: String?
    let isPremium: Bool?
    let addedToAttachmentMenu: Bool?
    
    // Returns only in `getMe`
    let canJoinGroups: Bool?
    let canReadAllGroupMessages: Bool?
    let supportsInlineQueries: Bool?
    let canConnectToBusiness: Bool?
    let hasMainWebApp: Bool?
    let hasTopicsEnabled: Bool?
    let allowsUsersToCreateTopics: Bool?
}
