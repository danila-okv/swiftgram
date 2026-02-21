//
//  Chat.swift
//  swiftgram
//
//  Created by Danila Okunev on 21.02.26.
//
enum ChatType: String, Codable {
    case `private`
    case group
    case supergroup
    case channel
}

struct Chat: Codable {
    let id: Int64
    let type: ChatType
    let title: String?
    let username: String?
    let firstName: String?
    let lastName: String?
    let isForum: String?
    let isDirectMessages: Bool?
}
