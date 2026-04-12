import Foundation

/// This object represents an incoming update.
/// At most one of the optional parameters can be present in any given update.
struct Update: TelegramEntity {
    
    /// The update's unique identifier.
    let updateId: Int
    
    /// Optional. New incoming message of any kind - text, photo, sticker, etc.
    let message: Message?
    
    /// Optional. New version of a message that is known to the bot and was edited.
    let editedMessage: Message?
    
    /// Optional. New incoming channel post of any kind - text, photo, sticker, etc.
    let channelPost: Message?
    
    /// Optional. New version of a channel post that is known to the bot and was edited.
    let editedChannelPost: Message?
    
    /// Optional. The bot was connected to or disconnected from a business account.
    let businessConnection: BusinessConnection?
    
    /// Optional. New message from a connected business account.
    let businessMessage: Message?
    
    /// Optional. New version of a message from a connected business account.
    let editedBusinessMessage: Message?
    
    /// Optional. Messages were deleted from a connected business account.
    let deletedBusinessMessages: BusinessMessagesDeleted?
    
    /// Optional. A reaction to a message was changed by a user.
    let messageReaction: MessageReactionUpdated?
    
    /// Optional. Reactions to a message with anonymous reactions were changed.
    let messageReactionCount: MessageReactionCountUpdated?
    
    /// Optional. New incoming inline query.
    let inlineQuery: InlineQuery?
    
    /// Optional. The result of an inline query that was chosen by a user.
    let chosenInlineResult: ChosenInlineResult?
    
    /// Optional. New incoming callback query.
    let callbackQuery: CallbackQuery?
    
    /// Optional. New incoming shipping query.
    let shippingQuery: ShippingQuery?
    
    /// Optional. New incoming pre-checkout query.
    let preCheckoutQuery: PreCheckoutQuery?
    
    /// Optional. A user purchased paid media.
    let purchasedPaidMedia: PaidMediaPurchased?
    
    /// Optional. New poll state.
    let poll: Poll?
    
    /// Optional. A user changed their answer in a non-anonymous poll.
    let pollAnswer: PollAnswer?
    
    /// Optional. The bot's chat member status was updated in a chat.
    let myChatMember: ChatMemberUpdated?
    
    /// Optional. A chat member's status was updated in a chat.
    let chatMember: ChatMemberUpdated?
    
    /// Optional. A request to join the chat has been sent.
    let chatJoinRequest: ChatJoinRequest?
    
    /// Optional. A chat boost was added or changed.
    let chatBoost: ChatBoostUpdated?
    
    /// Optional. A boost was removed from a chat.
    let removedChatBoost: ChatBoostRemoved?
    
    /// Optional. A new bot was created to be managed by the bot.
    let managedBot: ManagedBotUpdated?
}
