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
        case .regular:
            fontName = "Lexend-Regular"
        default:
            fontName = "Lexend-Regular" // fallback
        }
        
        
        if UIFont(name: fontName, size: size) != nil {
            return Font.custom(fontName, size: size)
        } else {
            print("Шрифт \(fontName) не найден! Используется системный шрифт.")
            return Font.system(size: size, weight: weight)
        }
    }
}
