import Foundation

/// This object describes the position on faces where a mask should be placed by default.
struct MaskPosition: TelegramEntity {
    
    /// The part of the face relative to which the mask should be placed.
    /// One of “forehead”, “eyes”, “mouth”, or “chin”.
    let point: String
    
    /// Shift by X-axis measured in widths of the mask scaled to the face size
    let xShift: Double
    
    /// Shift by Y-axis measured in heights of the mask scaled to the face size
    let yShift: Double
    
    /// Mask scaling coefficient
    let scale: Double
}
