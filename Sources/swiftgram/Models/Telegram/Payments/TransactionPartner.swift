import Foundation

/// This object describes the source of a transaction.
enum TransactionPartner: TelegramEntity {
    case user(TransactionPartnerUser)
    case chat(TransactionPartnerChat)
    case affiliateProgram(TransactionPartnerAffiliateProgram)
    case fragment(TransactionPartnerFragment)
    case telegramAds
    case telegramApi(requestCount: Int)
    case other

    private enum CodingKeys: String, CodingKey {
        case type, requestCount = "request_count"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "user": self = .user(try TransactionPartnerUser(from: decoder))
        case "chat": self = .chat(try TransactionPartnerChat(from: decoder))
        case "affiliate_program": self = .affiliateProgram(try TransactionPartnerAffiliateProgram(from: decoder))
        case "fragment": self = .fragment(try TransactionPartnerFragment(from: decoder))
        case "telegram_ads": self = .telegramAds
        case "telegram_api":
            let count = try container.decode(Int.self, forKey: .requestCount)
            self = .telegramApi(requestCount: count)
        case "other": self = .other
        default: throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Unknown partner type")
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .user(let p): try container.encode(p)
        case .chat(let p): try container.encode(p)
        case .affiliateProgram(let p): try container.encode(p)
        case .fragment(let p): try container.encode(p)
        case .telegramAds: 
            var c = encoder.container(keyedBy: CodingKeys.self)
            try c.encode("telegram_ads", forKey: .type)
        case .telegramApi(let count):
            var c = encoder.container(keyedBy: CodingKeys.self)
            try c.encode("telegram_api", forKey: .type)
            try c.encode(count, forKey: .requestCount)
        case .other:
            var c = encoder.container(keyedBy: CodingKeys.self)
            try c.encode("other", forKey: .type)
        }
    }
}
