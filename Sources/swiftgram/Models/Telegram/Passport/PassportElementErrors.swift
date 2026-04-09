import Foundation

struct PassportElementErrorDataField: Codable {
    let source: String = "data"
    let type: String
    let fieldName: String
    let dataHash: String
    let message: String
}

struct PassportElementErrorFrontSide: Codable {
    let source: String = "front_side"
    let type: String
    let fileHash: String
    let message: String
}

struct PassportElementErrorReverseSide: Codable {
    let source: String = "reverse_side"
    let type: String
    let fileHash: String
    let message: String
}

struct PassportElementErrorSelfie: Codable {
    let source: String = "selfie"
    let type: String
    let fileHash: String
    let message: String
}

struct PassportElementErrorFile: Codable {
    let source: String = "file"
    let type: String
    let fileHash: String
    let message: String
}

struct PassportElementErrorFiles: Codable {
    let source: String = "files"
    let type: String
    let fileHashes: [String]
    let message: String
}

struct PassportElementErrorTranslationFile: Codable {
    let source: String = "translation_file"
    let type: String
    let fileHash: String
    let message: String
}

struct PassportElementErrorTranslationFiles: Codable {
    let source: String = "translation_files"
    let type: String
    let fileHashes: [String]
    let message: String
}

struct PassportElementErrorUnspecified: Codable {
    let source: String = "unspecified"
    let type: String
    let elementHash: String
    let message: String
}
