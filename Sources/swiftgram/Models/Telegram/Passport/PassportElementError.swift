import Foundation

/// This object represents an error in the Telegram Passport element.
enum PassportElementError: TelegramEntity {
    case dataField(PassportElementErrorDataField)
    case frontSide(PassportElementErrorFrontSide)
    case reverseSide(PassportElementErrorReverseSide)
    case selfie(PassportElementErrorSelfie)
    case file(PassportElementErrorFile)
    case files(PassportElementErrorFiles)
    case translationFile(PassportElementErrorTranslationFile)
    case translationFiles(PassportElementErrorTranslationFiles)
    case unspecified(PassportElementErrorUnspecified)

    private enum SourceKeys: String, CodingKey {
        case source
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: SourceKeys.self)
        let source = try container.decode(String.self, forKey: .source)

        switch source {
        case "data": self = .dataField(try PassportElementErrorDataField(from: decoder))
        case "front_side": self = .frontSide(try PassportElementErrorFrontSide(from: decoder))
        case "reverse_side": self = .reverseSide(try PassportElementErrorReverseSide(from: decoder))
        case "selfie": self = .selfie(try PassportElementErrorSelfie(from: decoder))
        case "file": self = .file(try PassportElementErrorFile(from: decoder))
        case "files": self = .files(try PassportElementErrorFiles(from: decoder))
        case "translation_file": self = .translationFile(try PassportElementErrorTranslationFile(from: decoder))
        case "translation_files": self = .translationFiles(try PassportElementErrorTranslationFiles(from: decoder))
        case "unspecified": self = .unspecified(try PassportElementErrorUnspecified(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(forKey: .source, in: container, debugDescription: "Unknown error source: \(source)")
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .dataField(let e): try container.encode(e)
        case .frontSide(let e): try container.encode(e)
        case .reverseSide(let e): try container.encode(e)
        case .selfie(let e): try container.encode(e)
        case .file(let e): try container.encode(e)
        case .files(let e): try container.encode(e)
        case .translationFile(let e): try container.encode(e)
        case .translationFiles(let e): try container.encode(e)
        case .unspecified(let e): try container.encode(e)
        }
    }
}
