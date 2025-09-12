import SwiftUI

extension Font {
    static func lexend(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        let fontName: String
        switch weight {
        case .bold:
            fontName = "Lexend-Bold"
        case .medium:
            fontName = "Lexend-Medium"
        case .semibold:
            fontName = "Lexend-SemiBold"
        case .light:
            fontName = "Lexend-Light"
        default:
            fontName = "Lexend-Regular"
        }
        return Font.custom(fontName, size: size)
    }
}
