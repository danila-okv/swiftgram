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



extension InlineQueryResult {
    static func article(
        id: String,
        title: String,
        inputMessageContent: InputMessageContent,
        replyMarkup: InlineKeyboardMarkup? = nil,
        url: String? = nil,
        description: String? = nil,
        thumbnailUrl: String? = nil,
        thumbnailWidth: Int? = nil,
        thumbnailHeight: Int? = nil
    ) -> InlineQueryResult {
        .article(InlineQueryResultArticle(
            id: id, title: title, inputMessageContent: inputMessageContent,
            replyMarkup: replyMarkup, url: url, description: description,
            thumbnailUrl: thumbnailUrl, thumbnailWidth: thumbnailWidth, thumbnailHeight: thumbnailHeight
        ))
    }
    
    static func photo(
        id: String,
        photoUrl: String,
        thumbnailUrl: String,
        photoWidth: Int? = nil,
        photoHeight: Int? = nil,
        title: String? = nil,
        description: String? = nil,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        showCaptionAboveMedia: Bool? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .photo(InlineQueryResultPhoto(
            id: id, photoUrl: photoUrl, thumbnailUrl: thumbnailUrl,
            photoWidth: photoWidth, photoHeight: photoHeight, title: title,
            description: description, caption: caption, parseMode: parseMode,
            captionEntities: captionEntities, showCaptionAboveMedia: showCaptionAboveMedia,
            replyMarkup: replyMarkup, inputMessageContent: inputMessageContent
        ))
    }
    
    static func gif(
        id: String,
        gifUrl: String,
        thumbnailUrl: String,
        gifWidth: Int? = nil,
        gifHeight: Int? = nil,
        gifDuration: Int? = nil,
        thumbnailMimeType: String? = nil,
        title: String? = nil,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        showCaptionAboveMedia: Bool? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .gif(InlineQueryResultGif(
            id: id, gifUrl: gifUrl, gifWidth: gifWidth, gifHeight: gifHeight,
            gifDuration: gifDuration, thumbnailUrl: thumbnailUrl,
            thumbnailMimeType: thumbnailMimeType, title: title, caption: caption,
            parseMode: parseMode, captionEntities: captionEntities,
            showCaptionAboveMedia: showCaptionAboveMedia, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent
        ))
    }
    
    static func mpeg4Gif(
        id: String,
        mpeg4Url: String,
        thumbnailUrl: String,
        mpeg4Width: Int? = nil,
        mpeg4Height: Int? = nil,
        mpeg4Duration: Int? = nil,
        thumbnailMimeType: String? = nil,
        title: String? = nil,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        showCaptionAboveMedia: Bool? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .mpeg4Gif(InlineQueryResultMpeg4Gif(
            id: id, mpeg4Url: mpeg4Url, mpeg4Width: mpeg4Width, mpeg4Height: mpeg4Height,
            mpeg4Duration: mpeg4Duration, thumbnailUrl: thumbnailUrl,
            thumbnailMimeType: thumbnailMimeType, title: title, caption: caption,
            parseMode: parseMode, captionEntities: captionEntities,
            showCaptionAboveMedia: showCaptionAboveMedia, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent
        ))
    }
    
    static func video(
        id: String,
        videoUrl: String,
        mimeType: String,
        thumbnailUrl: String,
        title: String,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        showCaptionAboveMedia: Bool? = nil,
        videoWidth: Int? = nil,
        videoHeight: Int? = nil,
        videoDuration: Int? = nil,
        description: String? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .video(InlineQueryResultVideo(
            id: id, videoUrl: videoUrl, mimeType: mimeType, thumbnailUrl: thumbnailUrl,
            title: title, caption: caption, parseMode: parseMode,
            captionEntities: captionEntities, showCaptionAboveMedia: showCaptionAboveMedia,
            videoWidth: videoWidth, videoHeight: videoHeight, videoDuration: videoDuration,
            description: description, replyMarkup: replyMarkup, inputMessageContent: inputMessageContent
        ))
    }
    
    static func audio(
        id: String,
        audioUrl: String,
        title: String,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        performer: String? = nil,
        audioDuration: Int? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .audio(InlineQueryResultAudio(
            id: id, audioUrl: audioUrl, title: title, caption: caption,
            parseMode: parseMode, captionEntities: captionEntities,
            performer: performer, audioDuration: audioDuration,
            replyMarkup: replyMarkup, inputMessageContent: inputMessageContent
        ))
    }
    
    static func voice(
        id: String,
        voiceUrl: String,
        title: String,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        voiceDuration: Int? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .voice(InlineQueryResultVoice(
            id: id, voiceUrl: voiceUrl, title: title, caption: caption,
            parseMode: parseMode, captionEntities: captionEntities,
            voiceDuration: voiceDuration, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent
        ))
    }
    
    static func document(
        id: String,
        title: String,
        documentUrl: String,
        mimeType: String,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        description: String? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil,
        thumbnailUrl: String? = nil,
        thumbnailWidth: Int? = nil,
        thumbnailHeight: Int? = nil
    ) -> InlineQueryResult {
        .document(InlineQueryResultDocument(
            id: id, title: title, caption: caption, parseMode: parseMode,
            captionEntities: captionEntities, documentUrl: documentUrl,
            mimeType: mimeType, description: description, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent, thumbnailUrl: thumbnailUrl,
            thumbnailWidth: thumbnailWidth, thumbnailHeight: thumbnailHeight
        ))
    }
    
    static func location(
        id: String,
        latitude: Double,
        longitude: Double,
        title: String,
        horizontalAccuracy: Double? = nil,
        livePeriod: Int? = nil,
        heading: Int? = nil,
        proximityAlertRadius: Int? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil,
        thumbnailUrl: String? = nil,
        thumbnailWidth: Int? = nil,
        thumbnailHeight: Int? = nil
    ) -> InlineQueryResult {
        .location(InlineQueryResultLocation(
            id: id, latitude: latitude, longitude: longitude, title: title,
            horizontalAccuracy: horizontalAccuracy, livePeriod: livePeriod,
            heading: heading, proximityAlertRadius: proximityAlertRadius,
            replyMarkup: replyMarkup, inputMessageContent: inputMessageContent,
            thumbnailUrl: thumbnailUrl, thumbnailWidth: thumbnailWidth,
            thumbnailHeight: thumbnailHeight
        ))
    }
    
    static func venue(
        id: String,
        latitude: Double,
        longitude: Double,
        title: String,
        address: String,
        foursquareId: String? = nil,
        foursquareType: String? = nil,
        googlePlaceId: String? = nil,
        googlePlaceType: String? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil,
        thumbnailUrl: String? = nil,
        thumbnailWidth: Int? = nil,
        thumbnailHeight: Int? = nil
    ) -> InlineQueryResult {
        .venue(InlineQueryResultVenue(
            id: id, latitude: latitude, longitude: longitude, title: title,
            address: address, foursquareId: foursquareId,
            foursquareType: foursquareType, googlePlaceId: googlePlaceId,
            googlePlaceType: googlePlaceType, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent, thumbnailUrl: thumbnailUrl,
            thumbnailWidth: thumbnailWidth, thumbnailHeight: thumbnailHeight
        ))
    }
    
    static func contact(
        id: String,
        phoneNumber: String,
        firstName: String,
        lastName: String? = nil,
        vcard: String? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil,
        thumbnailUrl: String? = nil,
        thumbnailWidth: Int? = nil,
        thumbnailHeight: Int? = nil
    ) -> InlineQueryResult {
        .contact(InlineQueryResultContact(
            id: id, phoneNumber: phoneNumber, firstName: firstName,
            lastName: lastName, vcard: vcard, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent, thumbnailUrl: thumbnailUrl,
            thumbnailWidth: thumbnailWidth, thumbnailHeight: thumbnailHeight
        ))
    }
    
    static func game(
        id: String,
        gameShortName: String,
        replyMarkup: InlineKeyboardMarkup? = nil
    ) -> InlineQueryResult {
        .game(InlineQueryResultGame(id: id, gameShortName: gameShortName, replyMarkup: replyMarkup))
    }
    
    // MARK: - Cached Results (File IDs)
    
    static func cachedPhoto(
        id: String,
        photoFileId: String,
        title: String? = nil,
        description: String? = nil,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        showCaptionAboveMedia: Bool? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .cachedPhoto(InlineQueryResultCachedPhoto(
            id: id, photoFileId: photoFileId, title: title, description: description,
            caption: caption, parseMode: parseMode, captionEntities: captionEntities,
            showCaptionAboveMedia: showCaptionAboveMedia, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent
        ))
    }
    
    static func cachedGif(
        id: String,
        gifFileId: String,
        title: String? = nil,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        showCaptionAboveMedia: Bool? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .cachedGif(InlineQueryResultCachedGif(
            id: id, gifFileId: gifFileId, title: title, caption: caption,
            parseMode: parseMode, captionEntities: captionEntities,
            showCaptionAboveMedia: showCaptionAboveMedia, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent
        ))
    }
    
    static func cachedMpeg4Gif(
        id: String,
        mpeg4FileId: String,
        title: String? = nil,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        showCaptionAboveMedia: Bool? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .cachedMpeg4Gif(InlineQueryResultCachedMpeg4Gif(
            id: id, mpeg4FileId: mpeg4FileId, title: title, caption: caption,
            parseMode: parseMode, captionEntities: captionEntities,
            showCaptionAboveMedia: showCaptionAboveMedia, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent
        ))
    }
    
    static func cachedSticker(
        id: String,
        stickerFileId: String,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .cachedSticker(InlineQueryResultCachedSticker(
            id: id, stickerFileId: stickerFileId, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent
        ))
    }
    
    static func cachedDocument(
        id: String,
        title: String,
        documentFileId: String,
        description: String? = nil,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .cachedDocument(InlineQueryResultCachedDocument(
            id: id, title: title, documentFileId: documentFileId,
            description: description, caption: caption, parseMode: parseMode,
            captionEntities: captionEntities, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent
        ))
    }
    
    static func cachedVideo(
        id: String,
        videoFileId: String,
        title: String,
        description: String? = nil,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        showCaptionAboveMedia: Bool? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .cachedVideo(InlineQueryResultCachedVideo(
            id: id, videoFileId: videoFileId, title: title, description: description,
            caption: caption, parseMode: parseMode, captionEntities: captionEntities,
            showCaptionAboveMedia: showCaptionAboveMedia, replyMarkup: replyMarkup,
            inputMessageContent: inputMessageContent
        ))
    }
    
    static func cachedVoice(
        id: String,
        voiceFileId: String,
        title: String,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .cachedVoice(InlineQueryResultCachedVoice(
            id: id, voiceFileId: voiceFileId, title: title, caption: caption,
            parseMode: parseMode, captionEntities: captionEntities,
            replyMarkup: replyMarkup, inputMessageContent: inputMessageContent
        ))
    }
    
    static func cachedAudio(
        id: String,
        audioFileId: String,
        caption: String? = nil,
        parseMode: String? = nil,
        captionEntities: [MessageEntity]? = nil,
        replyMarkup: InlineKeyboardMarkup? = nil,
        inputMessageContent: InputMessageContent? = nil
    ) -> InlineQueryResult {
        .cachedAudio(InlineQueryResultCachedAudio(
            id: id, audioFileId: audioFileId, caption: caption,
            parseMode: parseMode, captionEntities: captionEntities,
            replyMarkup: replyMarkup, inputMessageContent: inputMessageContent
        ))
    }
}
