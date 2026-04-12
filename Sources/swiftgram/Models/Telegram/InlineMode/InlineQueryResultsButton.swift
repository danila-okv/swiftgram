//
//  InlineQueryResultsButton.swift
//  swiftgram
//
//  Created by Danila Okunev on 12.04.26.
//


import Foundation

/// This object represents a button to be shown above inline query results.
struct InlineQueryResultsButton: TelegramEntity {
    
    /// Label text on the button
    let text: String
    
    /// Optional. Description of the Web App that will be launched.
    let webApp: WebAppInfo?
    
    /// Optional. Deep-linking parameter for the /start message.
    let startParameter: String?
}