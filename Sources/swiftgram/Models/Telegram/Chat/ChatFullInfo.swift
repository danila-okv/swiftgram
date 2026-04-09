import Foundation

/// This object contains full information about a chat.
struct ChatFullInfo: TelegramEntity {
    
    /// Unique identifier for this chat.
    let id: Int
    
    /// Type of the chat, can be either “private”, “group”, “supergroup” or “channel”
    let type: ChatType
    
    /// Optional. Title, for supergroups, channels and group chats
    let title: String?
    
    /// Optional. Username, for private chats, supergroups and channels if available
    let username: String?
    
    /// Optional. First name of the other party in a private chat
    let firstName: String?
    
    /// Optional. Last name of the other party in a private chat
    let lastName: String?
    
    /// Optional. True, if the supergroup chat is a forum (has topics enabled)
    let isForum: Bool?
    
    /// Optional. True, if the chat is the direct messages chat of a channel
    let isDirectMessages: Bool?
    
    /// Identifier of the accent color for the chat name and backgrounds of the chat photo, reply header, and link preview.
    let accentColorId: Int
    
    /// The maximum number of reactions that can be set on a message in the chat
    let maxReactionCount: Int
    
    /// Optional. Chat photo
    let photo: ChatPhoto?
    
    /// Optional. If non-empty, the list of all active chat usernames; for private chats, supergroups and channels
    let activeUsernames: [String]?
    
    /// Optional. For private chats, the date of birth of the user
    let birthdate: Birthdate?
    
    /// Optional. For private chats with business accounts, the intro of the business
    let businessIntro: BusinessIntro?
    
    /// Optional. For private chats with business accounts, the location of the business
    let businessLocation: BusinessLocation?
    
    /// Optional. For private chats with business accounts, the opening hours of the business
    let businessOpeningHours: BusinessOpeningHours?
    
    /// Optional. For private chats, the personal channel of the user
    let personalChat: Chat?
    
    /// Optional. Information about the corresponding channel chat; for direct messages chats only
    let parentChat: Chat?
    
    /// Optional. List of available reactions allowed in the chat. If omitted, then all emoji reactions are allowed.
    let availableReactions: [ReactionType]?
    
    /// Optional. Custom emoji identifier of the emoji chosen by the chat for the reply header and link preview background
    let backgroundCustomEmojiId: String?
    
    /// Optional. Identifier of the accent color for the chat's profile background.
    let profileAccentColorId: Int?
    
    /// Optional. Custom emoji identifier of the emoji chosen by the chat for its profile background
    let profileBackgroundCustomEmojiId: String?
    
    /// Optional. Custom emoji identifier of the emoji status of the chat or the other party in a private chat
    let emojiStatusCustomEmojiId: String?
    
    /// Optional. Expiration date of the emoji status of the chat or the other party in a private chat, in Unix time, if any
    let emojiStatusExpirationDate: Int?
    
    /// Optional. Bio of the other party in a private chat
    let bio: String?
    
    /// Optional. True, if privacy settings of the other party in the private chat allows to use tg://user?id=<user_id> links only in chats with the user
    let hasPrivateForwards: Bool?
    
    /// Optional. True, if the privacy settings of the other party restrict sending voice and video note messages in the private chat
    let hasRestrictedVoiceAndVideoMessages: Bool?
    
    /// Optional. True, if users need to join the supergroup before they can send messages
    let joinToSendMessages: Bool?
    
    /// Optional. True, if all users directly joining the supergroup without using an invite link need to be approved by supergroup administrators
    let joinByRequest: Bool?
    
    /// Optional. Description, for groups, supergroups and channel chats
    let description: String?
    
    /// Optional. Primary invite link, for groups, supergroups and channel chats
    let inviteLink: String?
    
    /// Optional. The most recent pinned message (by sending date)
    let pinnedMessage: Message?
    
    /// Optional. Default chat member permissions, for groups and supergroups
    let permissions: ChatPermissions?
    
    /// Information about types of gifts that are accepted by the chat or by the corresponding user for private chats
    let acceptedGiftTypes: AcceptedGiftTypes
    
    /// Optional. True, if paid media messages can be sent or forwarded to the channel chat. The field is available only for channel chats.
    let canSendPaidMedia: Bool?
    
    /// Optional. For supergroups, the minimum allowed delay between consecutive messages sent by each unprivileged user; in seconds
    let slowModeDelay: Int?
    
    /// Optional. For supergroups, the minimum number of boosts that a non-administrator user needs to add in order to ignore slow mode and chat permissions
    let unrestrictBoostCount: Int?
    
    /// Optional. The time after which all messages sent to the chat will be automatically deleted; in seconds
    let messageAutoDeleteTime: Int?
    
    /// Optional. True, if aggressive anti-spam checks are enabled in the supergroup. The field is only available to chat administrators.
    let hasAggressiveAntiSpamEnabled: Bool?
    
    /// Optional. True, if non-administrators can only get the list of bots and administrators in the chat
    let hasHiddenMembers: Bool?
    
    /// Optional. True, if messages from the chat can't be forwarded to other chats
    let hasProtectedContent: Bool?
    
    /// Optional. True, if new chat members will have access to old messages; available only to chat administrators
    let hasVisibleHistory: Bool?
    
    /// Optional. For supergroups, name of the group sticker set
    let stickerSetName: String?
    
    /// Optional. True, if the bot can change the group sticker set
    let canSetStickerSet: Bool?
    
    /// Optional. For supergroups, the name of the group's custom emoji sticker set.
    let customEmojiStickerSetName: String?
    
    /// Optional. Unique identifier for the linked chat, i.e. the discussion group identifier for a channel and vice versa
    let linkedChatId: Int?
    
    /// Optional. For supergroups, the location to which the supergroup is connected
    let location: ChatLocation?
    
    /// Optional. For private chats, the rating of the user if any
    let rating: UserRating?
    
    /// Optional. For private chats, the first audio added to the profile of the user
    let firstProfileAudio: Audio?
    
    /// Optional. The color scheme based on a unique gift that must be used for the chat's name, message replies and link previews
    let uniqueGiftColors: UniqueGiftColors?
    
    /// Optional. The number of Telegram Stars a general user have to pay to send a message to the chat
    let paidMessageStarCount: Int?
}
