import Foundation

/// This object represents a message.
final class Message: TelegramEntity {
    
    /// Unique message identifier inside this chat. In specific instances (e.g., message containing a video sent to a big chat), the server might automatically schedule a message instead of sending it immediately. In such cases, this field will be 0 and the relevant message will be unusable until it is actually sent
    let messageId: Int
    
    /// Optional. Unique identifier of a message thread or forum topic to which the message belongs; for supergroups and private chats only
    let messageThreadId: Int?
    
    /// Optional. Information about the direct messages chat topic that contains the message
    let directMessagesTopic: DirectMessagesTopic?
    
    /// Optional. Sender of the message; may be empty for messages sent to channels. For backward compatibility, if the message was sent on behalf of a chat, the field contains a fake sender user in non-channel chats
    let from: User?
    
    /// Optional. Sender of the message when sent on behalf of a chat. For example, the supergroup itself for messages sent by its anonymous administrators or a linked channel for messages automatically forwarded to the channel's discussion group.
    let senderChat: Chat?
    
    /// Optional. If the sender of the message boosted the chat, the number of boosts added by the user
    let senderBoostCount: Int?
    
    /// Optional. The bot that actually sent the message on behalf of the business account. Available only for outgoing messages sent on behalf of the connected business account.
    let senderBusinessBot: User?
    
    /// Optional. Tag or custom title of the sender of the message; for supergroups only
    let senderTag: String?
    
    /// Date the message was sent in Unix time. It is always a positive number, representing a valid date.
    let date: Int
    
    /// Optional. Unique identifier of the business connection from which the message was received.
    let businessConnectionId: String?
    
    /// Chat the message belongs to
    let chat: Chat
    
    /// Optional. Information about the original message for forwarded messages
    let forwardOrigin: MessageOrigin?
    
    /// Optional. True, if the message is sent to a topic in a forum supergroup or a private chat with the bot
    let isTopicMessage: Bool?
    
    /// Optional. True, if the message is a channel post that was automatically forwarded to the connected discussion group
    let isAutomaticForward: Bool?
    
    /// Optional. For replies in the same chat and message thread, the original message.
    let replyToMessage: Message?
    
    /// Optional. Information about the message that is being replied to, which may come from another chat or forum topic
    let externalReply: ExternalReplyInfo?
    
    /// Optional. For replies that quote part of the original message, the quoted part of the message
    let quote: TextQuote?
    
    /// Optional. For replies to a story, the original story
    let replyToStory: Story?
    
    /// Optional. Identifier of the specific checklist task that is being replied to
    let replyToChecklistTaskId: Int?
    
    /// Optional. Persistent identifier of the specific poll option that is being replied to
    let replyToPollOptionId: String?
    
    /// Optional. Bot through which the message was sent
    let viaBot: User?
    
    /// Optional. Date the message was last edited in Unix time
    let editDate: Int?
    
    /// Optional. True, if the message can't be forwarded
    let hasProtectedContent: Bool?
    
    /// Optional. True, if the message was sent by an implicit action
    let isFromOffline: Bool?
    
    /// Optional. True, if the message is a paid post.
    let isPaidPost: Bool?
    
    /// Optional. The unique identifier inside this chat of a media message group this message belongs to
    let mediaGroupId: String?
    
    /// Optional. Signature of the post author for messages in channels, or the custom title of an anonymous group administrator
    let authorSignature: String?
    
    /// Optional. The number of Telegram Stars that were paid by the sender of the message to send it
    let paidStarCount: Int?
    
    /// Optional. For text messages, the actual UTF-8 text of the message
    let text: String?
    
    /// Optional. For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text
    let entities: [MessageEntity]?
    
    /// Optional. Options used for link preview generation for the message
    let linkPreviewOptions: LinkPreviewOptions?
    
    /// Optional. Information about suggested post parameters
    let suggestedPostInfo: SuggestedPostInfo?
    
    /// Optional. Unique identifier of the message effect added to the message
    let effectId: String?
    
    /// Optional. Message is an animation, information about the animation.
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
    
    /// Optional. Caption for the animation, audio, document, paid media, photo, video or voice
    let caption: String?
    
    /// Optional. For messages with a caption, special entities that appear in the caption
    let captionEntities: [MessageEntity]?
    
    /// Optional. True, if the caption must be shown above the message media
    let showCaptionAboveMedia: Bool?
    
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
    
    /// Optional. Message is a native poll, information about the poll
    let poll: Poll?
    
    /// Optional. Message is a venue, information about the venue.
    let venue: Venue?
    
    /// Optional. Message is a shared location, information about the location
    let location: Location?
    
    /// Optional. New members that were added to the group or supergroup
    let newChatMembers: [User]?
    
    /// Optional. A member was removed from the group, information about them
    let leftChatMember: User?
    
    /// Optional. Service message: chat owner has left
    let chatOwnerLeft: ChatOwnerLeft?
    
    /// Optional. Service message: chat owner has changed
    let chatOwnerChanged: ChatOwnerChanged?
    
    /// Optional. A chat title was changed to this value
    let newChatTitle: String?
    
    /// Optional. A chat photo was change to this value
    let newChatPhoto: [PhotoSize]?
    
    /// Optional. Service message: the chat photo was deleted
    let deleteChatPhoto: Bool?
    
    /// Optional. Service message: the group has been created
    let groupChatCreated: Bool?
    
    /// Optional. Service message: the supergroup has been created.
    let supergroupChatCreated: Bool?
    
    /// Optional. Service message: the channel has been created.
    let channelChatCreated: Bool?
    
    /// Optional. Service message: auto-delete timer settings changed in the chat
    let messageAutoDeleteTimerChanged: MessageAutoDeleteTimerChanged?
    
    /// Optional. The group has been migrated to a supergroup with the specified identifier.
    let migrateToChatId: Int?
    
    /// Optional. The supergroup has been migrated from a group with the specified identifier.
    let migrateFromChatId: Int?
    
    /// Optional. Specified message was pinned.
    let pinnedMessage: MaybeInaccessibleMessage?
    
    /// Optional. Message is an invoice for a payment, information about the invoice.
    let invoice: Invoice?
    
    /// Optional. Message is a service message about a successful payment
    let successfulPayment: SuccessfulPayment?
    
    /// Optional. Message is a service message about a refunded payment
    let refundedPayment: RefundedPayment?
    
    /// Optional. Service message: users were shared with the bot
    let usersShared: UsersShared?
    
    /// Optional. Service message: a chat was shared with the bot
    let chatShared: ChatShared?
    
    /// Optional. Service message: a regular gift was sent or received
    let gift: GiftInfo?
    
    /// Optional. Service message: a unique gift was sent or received
    let uniqueGift: UniqueGiftInfo?
    
    /// Optional. Service message: upgrade of a gift was purchased after the gift was sent
    let giftUpgradeSent: GiftInfo?
    
    /// Optional. The domain name of the website on which the user has logged in.
    let connectedWebsite: String?
    
    /// Optional. Service message: the user allowed the bot to write messages
    let writeAccessAllowed: WriteAccessAllowed?
    
    /// Optional. Telegram Passport data
    let passportData: PassportData?
    
    /// Optional. Service message. A user in the chat triggered another user's proximity alert
    let proximityAlertTriggered: ProximityAlertTriggered?
    
    /// Optional. Service message: user boosted the chat
    let boostAdded: ChatBoostAdded?
    
    /// Optional. Service message: chat background set
    let chatBackgroundSet: ChatBackground?
    
    /// Optional. Service message: some tasks in a checklist were marked as done or not done
    let checklistTasksDone: ChecklistTasksDone?
    
    /// Optional. Service message: tasks were added to a checklist
    let checklistTasksAdded: ChecklistTasksAdded?
    
    /// Optional. Service message: the price for paid messages in the corresponding direct messages chat of a channel has changed
    let directMessagePriceChanged: DirectMessagePriceChanged?
    
    /// Optional. Service message: forum topic created
    let forumTopicCreated: ForumTopicCreated?
    
    /// Optional. Service message: forum topic edited
    let forumTopicEdited: ForumTopicEdited?
    
    /// Optional. Service message: forum topic closed
    let forumTopicClosed: ForumTopicClosed?
    
    /// Optional. Service message: forum topic reopened
    let forumTopicReopened: ForumTopicReopened?
    
    /// Optional. Service message: the 'General' forum topic hidden
    let generalForumTopicHidden: GeneralForumTopicHidden?
    
    /// Optional. Service message: the 'General' forum topic unhidden
    let generalForumTopicUnhidden: GeneralForumTopicUnhidden?
    
    /// Optional. Service message: a scheduled giveaway was created
    let giveawayCreated: GiveawayCreated?
    
    /// Optional. The message is a scheduled giveaway message
    let giveaway: Giveaway?
    
    /// Optional. A giveaway with public winners was completed
    let giveawayWinners: GiveawayWinners?
    
    /// Optional. Service message: a giveaway without public winners was completed
    let giveawayCompleted: GiveawayCompleted?
    
    /// Optional. Service message: user created a bot that will be managed by the current bot
    let managedBotCreated: ManagedBotCreated?
    
    /// Optional. Service message: the price for paid messages has changed in the chat
    let paidMessagePriceChanged: PaidMessagePriceChanged?
    
    /// Optional. Service message: answer option was added to a poll
    let pollOptionAdded: PollOptionAdded?
    
    /// Optional. Service message: answer option was deleted from a poll
    let pollOptionDeleted: PollOptionDeleted?
    
    /// Optional. Service message: a suggested post was approved
    let suggestedPostApproved: SuggestedPostApproved?
    
    /// Optional. Service message: approval of a suggested post has failed
    let suggestedPostApprovalFailed: SuggestedPostApprovalFailed?
    
    /// Optional. Service message: a suggested post was declined
    let suggestedPostDeclined: SuggestedPostDeclined?
    
    /// Optional. Service message: payment for a suggested post was received
    let suggestedPostPaid: SuggestedPostPaid?
    
    /// Optional. Service message: payment for a suggested post was refunded
    let suggestedPostRefunded: SuggestedPostRefunded?
    
    /// Optional. Service message: video chat scheduled
    let videoChatScheduled: VideoChatScheduled?
    
    /// Optional. Service message: video chat started
    let videoChatStarted: VideoChatStarted?
    
    /// Optional. Service message: video chat ended
    let videoChatEnded: VideoChatEnded?
    
    /// Optional. Service message: new participants invited to a video chat
    let videoChatParticipantsInvited: VideoChatParticipantsInvited?
    
    /// Optional. Service message: data sent by a Web App
    let webAppData: WebAppData?
    
    /// Optional. Inline keyboard attached to the message.
    let replyMarkup: InlineKeyboardMarkup?
    
    
    
    init(
            messageId: Int,
            messageThreadId: Int? = nil,
            directMessagesTopic: DirectMessagesTopic? = nil,
            from: User? = nil,
            senderChat: Chat? = nil,
            senderBoostCount: Int? = nil,
            senderBusinessBot: User? = nil,
            senderTag: String? = nil,
            date: Int,
            businessConnectionId: String? = nil,
            chat: Chat,
            forwardOrigin: MessageOrigin? = nil,
            isTopicMessage: Bool? = nil,
            isAutomaticForward: Bool? = nil,
            replyToMessage: Message? = nil,
            externalReply: ExternalReplyInfo? = nil,
            quote: TextQuote? = nil,
            replyToStory: Story? = nil,
            replyToChecklistTaskId: Int? = nil,
            replyToPollOptionId: String? = nil,
            viaBot: User? = nil,
            editDate: Int? = nil,
            hasProtectedContent: Bool? = nil,
            isFromOffline: Bool? = nil,
            isPaidPost: Bool? = nil,
            mediaGroupId: String? = nil,
            authorSignature: String? = nil,
            paidStarCount: Int? = nil,
            text: String? = nil,
            entities: [MessageEntity]? = nil,
            linkPreviewOptions: LinkPreviewOptions? = nil,
            suggestedPostInfo: SuggestedPostInfo? = nil,
            effectId: String? = nil,
            animation: Animation? = nil,
            audio: Audio? = nil,
            document: Document? = nil,
            paidMedia: PaidMediaInfo? = nil,
            photo: [PhotoSize]? = nil,
            sticker: Sticker? = nil,
            story: Story? = nil,
            video: Video? = nil,
            videoNote: VideoNote? = nil,
            voice: Voice? = nil,
            caption: String? = nil,
            captionEntities: [MessageEntity]? = nil,
            showCaptionAboveMedia: Bool? = nil,
            hasMediaSpoiler: Bool? = nil,
            checklist: Checklist? = nil,
            contact: Contact? = nil,
            dice: Dice? = nil,
            game: Game? = nil,
            poll: Poll? = nil,
            venue: Venue? = nil,
            location: Location? = nil,
            newChatMembers: [User]? = nil,
            leftChatMember: User? = nil,
            chatOwnerLeft: ChatOwnerLeft? = nil,
            chatOwnerChanged: ChatOwnerChanged? = nil,
            newChatTitle: String? = nil,
            newChatPhoto: [PhotoSize]? = nil,
            deleteChatPhoto: Bool? = nil,
            groupChatCreated: Bool? = nil,
            supergroupChatCreated: Bool? = nil,
            channelChatCreated: Bool? = nil,
            messageAutoDeleteTimerChanged: MessageAutoDeleteTimerChanged? = nil,
            migrateToChatId: Int? = nil,
            migrateFromChatId: Int? = nil,
            pinnedMessage: MaybeInaccessibleMessage? = nil,
            invoice: Invoice? = nil,
            successfulPayment: SuccessfulPayment? = nil,
            refundedPayment: RefundedPayment? = nil,
            usersShared: UsersShared? = nil,
            chatShared: ChatShared? = nil,
            gift: GiftInfo? = nil,
            uniqueGift: UniqueGiftInfo? = nil,
            giftUpgradeSent: GiftInfo? = nil,
            connectedWebsite: String? = nil,
            writeAccessAllowed: WriteAccessAllowed? = nil,
            passportData: PassportData? = nil,
            proximityAlertTriggered: ProximityAlertTriggered? = nil,
            boostAdded: ChatBoostAdded? = nil,
            chatBackgroundSet: ChatBackground? = nil,
            checklistTasksDone: ChecklistTasksDone? = nil,
            checklistTasksAdded: ChecklistTasksAdded? = nil,
            directMessagePriceChanged: DirectMessagePriceChanged? = nil,
            forumTopicCreated: ForumTopicCreated? = nil,
            forumTopicEdited: ForumTopicEdited? = nil,
            forumTopicClosed: ForumTopicClosed? = nil,
            forumTopicReopened: ForumTopicReopened? = nil,
            generalForumTopicHidden: GeneralForumTopicHidden? = nil,
            generalForumTopicUnhidden: GeneralForumTopicUnhidden? = nil,
            giveawayCreated: GiveawayCreated? = nil,
            giveaway: Giveaway? = nil,
            giveawayWinners: GiveawayWinners? = nil,
            giveawayCompleted: GiveawayCompleted? = nil,
            managedBotCreated: ManagedBotCreated? = nil,
            paidMessagePriceChanged: PaidMessagePriceChanged? = nil,
            pollOptionAdded: PollOptionAdded? = nil,
            pollOptionDeleted: PollOptionDeleted? = nil,
            suggestedPostApproved: SuggestedPostApproved? = nil,
            suggestedPostApprovalFailed: SuggestedPostApprovalFailed? = nil,
            suggestedPostDeclined: SuggestedPostDeclined? = nil,
            suggestedPostPaid: SuggestedPostPaid? = nil,
            suggestedPostRefunded: SuggestedPostRefunded? = nil,
            videoChatScheduled: VideoChatScheduled? = nil,
            videoChatStarted: VideoChatStarted? = nil,
            videoChatEnded: VideoChatEnded? = nil,
            videoChatParticipantsInvited: VideoChatParticipantsInvited? = nil,
            webAppData: WebAppData? = nil,
            replyMarkup: InlineKeyboardMarkup? = nil
        ) {
            self.messageId = messageId
            self.messageThreadId = messageThreadId
            self.directMessagesTopic = directMessagesTopic
            self.from = from
            self.senderChat = senderChat
            self.senderBoostCount = senderBoostCount
            self.senderBusinessBot = senderBusinessBot
            self.senderTag = senderTag
            self.date = date
            self.businessConnectionId = businessConnectionId
            self.chat = chat
            self.forwardOrigin = forwardOrigin
            self.isTopicMessage = isTopicMessage
            self.isAutomaticForward = isAutomaticForward
            self.replyToMessage = replyToMessage
            self.externalReply = externalReply
            self.quote = quote
            self.replyToStory = replyToStory
            self.replyToChecklistTaskId = replyToChecklistTaskId
            self.replyToPollOptionId = replyToPollOptionId
            self.viaBot = viaBot
            self.editDate = editDate
            self.hasProtectedContent = hasProtectedContent
            self.isFromOffline = isFromOffline
            self.isPaidPost = isPaidPost
            self.mediaGroupId = mediaGroupId
            self.authorSignature = authorSignature
            self.paidStarCount = paidStarCount
            self.text = text
            self.entities = entities
            self.linkPreviewOptions = linkPreviewOptions
            self.suggestedPostInfo = suggestedPostInfo
            self.effectId = effectId
            self.animation = animation
            self.audio = audio
            self.document = document
            self.paidMedia = paidMedia
            self.photo = photo
            self.sticker = sticker
            self.story = story
            self.video = video
            self.videoNote = videoNote
            self.voice = voice
            self.caption = caption
            self.captionEntities = captionEntities
            self.showCaptionAboveMedia = showCaptionAboveMedia
            self.hasMediaSpoiler = hasMediaSpoiler
            self.checklist = checklist
            self.contact = contact
            self.dice = dice
            self.game = game
            self.poll = poll
            self.venue = venue
            self.location = location
            self.newChatMembers = newChatMembers
            self.leftChatMember = leftChatMember
            self.chatOwnerLeft = chatOwnerLeft
            self.chatOwnerChanged = chatOwnerChanged
            self.newChatTitle = newChatTitle
            self.newChatPhoto = newChatPhoto
            self.deleteChatPhoto = deleteChatPhoto
            self.groupChatCreated = groupChatCreated
            self.supergroupChatCreated = supergroupChatCreated
            self.channelChatCreated = channelChatCreated
            self.messageAutoDeleteTimerChanged = messageAutoDeleteTimerChanged
            self.migrateToChatId = migrateToChatId
            self.migrateFromChatId = migrateFromChatId
            self.pinnedMessage = pinnedMessage
            self.invoice = invoice
            self.successfulPayment = successfulPayment
            self.refundedPayment = refundedPayment
            self.usersShared = usersShared
            self.chatShared = chatShared
            self.gift = gift
            self.uniqueGift = uniqueGift
            self.giftUpgradeSent = giftUpgradeSent
            self.connectedWebsite = connectedWebsite
            self.writeAccessAllowed = writeAccessAllowed
            self.passportData = passportData
            self.proximityAlertTriggered = proximityAlertTriggered
            self.boostAdded = boostAdded
            self.chatBackgroundSet = chatBackgroundSet
            self.checklistTasksDone = checklistTasksDone
            self.checklistTasksAdded = checklistTasksAdded
            self.directMessagePriceChanged = directMessagePriceChanged
            self.forumTopicCreated = forumTopicCreated
            self.forumTopicEdited = forumTopicEdited
            self.forumTopicClosed = forumTopicClosed
            self.forumTopicReopened = forumTopicReopened
            self.generalForumTopicHidden = generalForumTopicHidden
            self.generalForumTopicUnhidden = generalForumTopicUnhidden
            self.giveawayCreated = giveawayCreated
            self.giveaway = giveaway
            self.giveawayWinners = giveawayWinners
            self.giveawayCompleted = giveawayCompleted
            self.managedBotCreated = managedBotCreated
            self.paidMessagePriceChanged = paidMessagePriceChanged
            self.pollOptionAdded = pollOptionAdded
            self.pollOptionDeleted = pollOptionDeleted
            self.suggestedPostApproved = suggestedPostApproved
            self.suggestedPostApprovalFailed = suggestedPostApprovalFailed
            self.suggestedPostDeclined = suggestedPostDeclined
            self.suggestedPostPaid = suggestedPostPaid
            self.suggestedPostRefunded = suggestedPostRefunded
            self.videoChatScheduled = videoChatScheduled
            self.videoChatStarted = videoChatStarted
            self.videoChatEnded = videoChatEnded
            self.videoChatParticipantsInvited = videoChatParticipantsInvited
            self.webAppData = webAppData
            self.replyMarkup = replyMarkup
        }
}
