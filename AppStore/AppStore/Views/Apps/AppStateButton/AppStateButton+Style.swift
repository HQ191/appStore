import SwiftUI

extension AppStateButton {
    enum Style {
        case solid
        case opaque
        
        var backgroundColor: Color {
            switch self {
            case .solid: return .gray.opacity(0.7)
            case .opaque: return .black.opacity(0.5)
            }
        }
        
        var tint: Color {
            switch self {
            case .solid: return .accentColor
            case .opaque: return .white
            }
        }
    }
}
