import Foundation

/// This object represents one result of an inline query.
enum InlineQueryResult: Encodable {
    case article(InlineQueryResultArticle)
    case photo(InlineQueryResultPhoto)
    case gif(InlineQueryResultGif)
    case mpeg4Gif(InlineQueryResultMpeg4Gif)
    case video(InlineQueryResultVideo)
    case audio(InlineQueryResultAudio)
    case voice(InlineQueryResultVoice)
    case document(InlineQueryResultDocument)
    case location(InlineQueryResultLocation)
    case venue(InlineQueryResultVenue)
    case contact(InlineQueryResultContact)
    case game(InlineQueryResultGame)
    
    case cachedAudio(InlineQueryResultCachedAudio)
    case cachedDocument(InlineQueryResultCachedDocument)
    case cachedGif(InlineQueryResultCachedGif)
    case cachedMpeg4Gif(InlineQueryResultCachedMpeg4Gif)
    case cachedPhoto(InlineQueryResultCachedPhoto)
    case cachedSticker(InlineQueryResultCachedSticker)
    case cachedVideo(InlineQueryResultCachedVideo)
    case cachedVoice(InlineQueryResultCachedVoice)

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .article(let res): try container.encode(res)
        case .photo(let res): try container.encode(res)
        case .gif(let res): try container.encode(res)
        case .mpeg4Gif(let res): try container.encode(res)
        case .video(let res): try container.encode(res)
        case .audio(let res): try container.encode(res)
        case .voice(let res): try container.encode(res)
        case .document(let res): try container.encode(res)
        case .location(let res): try container.encode(res)
        case .venue(let res): try container.encode(res)
        case .contact(let res): try container.encode(res)
        case .game(let res): try container.encode(res)
        case .cachedAudio(let res): try container.encode(res)
        case .cachedDocument(let res): try container.encode(res)
        case .cachedGif(let res): try container.encode(res)
        case .cachedMpeg4Gif(let res): try container.encode(res)
        case .cachedPhoto(let res): try container.encode(res)
        case .cachedSticker(let res): try container.encode(res)
        case .cachedVideo(let res): try container.encode(res)
        case .cachedVoice(let res): try container.encode(res)
        }
    }
}
