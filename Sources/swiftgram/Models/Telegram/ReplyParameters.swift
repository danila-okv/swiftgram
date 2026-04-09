import Foundation

/// Describes reply parameters for the message that is being sent.
struct ReplyParameters: TelegramEntity {
    
    /// Identifier of the message that will be replied to in the current chat, or in the chat chat_id if it is specified
    let messageId: Int
    
    /// Optional. If the message to be replied to is from a different chat, unique identifier for the chat or username of the channel (in the format @channelusername).
    let chatId: ChatId?
    
    /// Optional. Pass True if the message should be sent even if the specified message to be replied to is not found.
    let allowSendingWithoutReply: Bool?
    
    /// Optional. Quoted part of the message to be replied to; 0-1024 characters after entities parsing.
    let quote: String?
    
    /// Optional. Mode for parsing entities in the quote.
    let quoteParseMode: String?
    
    /// Optional. A JSON-serialized list of special entities that appear in the quote. It can be specified instead of quote_parse_mode.
    let quoteEntities: [MessageEntity]?
    
    /// Optional. Position of the quote in the original message in UTF-16 code units
    let quotePosition: Int?
    
    /// Optional. Identifier of the specific checklist task to be replied to
    let checklistTaskId: Int?
    
    /// Optional. Persistent identifier of the specific poll option to be replied to
    let pollOptionId: String?
}
