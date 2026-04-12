import Foundation

/// Represents the content of an invoice message to be sent as the result of an inline query.
struct InputInvoiceMessageContent: TelegramEntity {
    
    let title: String
    let description: String
    let payload: String
    let providerToken: String?
    let currency: String
    let prices: [LabeledPrice]
    let maxTipAmount: Int?
    let suggestedTipAmounts: [Int]?
    let providerData: String?
    let photoUrl: String?
    let photoSize: Int?
    let photoWidth: Int?
    let photoHeight: Int?
    let needName: Bool?
    let needPhoneNumber: Bool?
    let needEmail: Bool?
    let needShippingAddress: Bool?
    let sendPhoneNumberToProvider: Bool?
    let sendEmailToProvider: Bool?
    let isFlexible: Bool?
}
