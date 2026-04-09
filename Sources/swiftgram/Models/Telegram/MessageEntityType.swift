import Foundation

/// Type of the entity.
enum MessageEntityType: String, Codable {
    case mention
    case hashtag
    case cashtag
    case botCommand = "bot_command"
    case url
    case email
    case phoneNumber = "phone_number"
    case bold
    case italic
    case underline
    case strikethrough
    case spoiler
    case blockquote
    case expandableBlockquote = "expandable_blockquote"
    case code
    case pre
    case textLink = "text_link"
    case textMention = "text_mention"
    case customEmoji = "custom_emoji"
    case dateTime = "date_time"
}

/// This object represents one special entity in a text message. For example, hashtags, usernames, URLs, etc.
struct MessageEntity: TelegramEntity {
    
    /// Type of the entity.
    let type: MessageEntityType
    
    /// Offset in UTF-16 code units to the start of the entity
    let offset: Int
    
    /// Length of the entity in UTF-16 code units
    let length: Int
    
    /// Optional. For “text_link” only, URL that will be opened after user taps on the text
    let url: String?
    
    /// Optional. For “text_mention” only, the mentioned user
    let user: User?
    
    /// Optional. For “pre” only, the programming language of the entity text
    let language: String?
    
    /// Optional. For “custom_emoji” only, unique identifier of the custom emoji.
    let customEmojiId: String?
    
    /// Optional. For “date_time” only, the Unix time associated with the entity
    let unixTime: Int?
    
    /// Optional. For “date_time” only, the string that defines the formatting of the date and time.
    let dateTimeFormat: String?
}
