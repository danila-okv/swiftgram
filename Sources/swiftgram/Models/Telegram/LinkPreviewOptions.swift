import Foundation

/// Describes the options used for link preview generation.
struct LinkPreviewOptions: TelegramEntity {
    
    /// Optional. True, if the link preview is disabled
    let isDisabled: Bool?
    
    /// Optional. URL to use for the link preview. If empty, then the first URL found in the message text will be used
    let url: String?
    
    /// Optional. True, if the media in the link preview is supposed to be shrunk
    let preferSmallMedia: Bool?
    
    /// Optional. True, if the media in the link preview is supposed to be enlarged
    let preferLargeMedia: Bool?
    
    /// Optional. True, if the link preview must be shown above the message text
    let showAboveText: Bool?
}
