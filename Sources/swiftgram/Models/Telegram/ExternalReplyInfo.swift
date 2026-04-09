import Foundation

/// This object contains information about a message that is being replied to, which may come from another chat or forum topic.
struct ExternalReplyInfo: TelegramEntity {
    
    /// Origin of the message replied to by the given message
    let origin: MessageOrigin
    
    /// Optional. Chat the original message belongs to. Available only if the chat is a supergroup or a channel.
    let chat: Chat?
    
    /// Optional. Unique message identifier inside the original chat. Available only if the original chat is a supergroup or a channel.
    let messageId: Int?
    
    /// Optional. Options used for link preview generation for the original message, if it is a text message
    let linkPreviewOptions: LinkPreviewOptions?
    
    /// Optional. Message is an animation, information about the animation
    let animation: Animation?
    
    /// Optional. Message is an audio file, information about the file
    let audio: Audio?
    
    /// Optional. Message is a general file, information about the file
    let document: Document?
    
    /// Optional. Message contains paid media; information about the paid media
    let paidMedia: PaidMediaInfo?
    
    /// Optional. Message is a photo, available sizes of the photo
    let photo: [PhotoSize]?
    
    /// Optional. Message is a sticker, information about the sticker
    let sticker: Sticker?
    
    /// Optional. Message is a forwarded story
    let story: Story?
    
    /// Optional. Message is a video, information about the video
    let video: Video?
    
    /// Optional. Message is a video note, information about the video message
    let videoNote: VideoNote?
    
    /// Optional. Message is a voice message, information about the file
    let voice: Voice?
    
    /// Optional. True, if the message media is covered by a spoiler animation
    let hasMediaSpoiler: Bool?
    
    /// Optional. Message is a checklist
    let checklist: Checklist?
    
    /// Optional. Message is a shared contact, information about the contact
    let contact: Contact?
    
    /// Optional. Message is a dice with random value
    let dice: Dice?
    
    /// Optional. Message is a game, information about the game.
    let game: Game?
    
    /// Optional. Message is a scheduled giveaway, information about the giveaway
    let giveaway: Giveaway?
    
    /// Optional. A giveaway with public winners was completed
    let giveawayWinners: GiveawayWinners?
    
    /// Optional. Message is an invoice for a payment, information about the invoice.
    let invoice: Invoice?
    
    /// Optional. Message is a shared location, information about the location
    let location: Location?
    
    /// Optional. Message is a native poll, information about the poll
    let poll: Poll?
    
    /// Optional. Message is a venue, information about the venue
    let venue: Venue?
}
