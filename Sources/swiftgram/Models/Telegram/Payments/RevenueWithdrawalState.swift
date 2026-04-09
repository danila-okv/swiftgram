import Foundation

/// This object describes the state of a revenue withdrawal operation.
enum RevenueWithdrawalState: TelegramEntity {
    case pending
    case succeeded(date: Int, url: String)
    case failed

    private enum CodingKeys: String, CodingKey {
        case type, date, url
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "pending": self = .pending
        case "succeeded":
            let date = try container.decode(Int.self, forKey: .date)
            let url = try container.decode(String.self, forKey: .url)
            self = .succeeded(date: date, url: url)
        case "failed": self = .failed
        default: throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Unknown state type")
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .pending: try container.encode("pending", forKey: .type)
        case .succeeded(let date, let url):
            try container.encode("succeeded", forKey: .type)
            try container.encode(date, forKey: .date)
            try container.encode(url, forKey: .url)
        case .failed: try container.encode("failed", forKey: .type)
        }
    }
}
