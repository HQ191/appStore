import SwiftUI

enum ListRowStyle {
    case hidden
    
    var viewModifier: some ViewModifier {
        switch self {
        case .hidden:
            return ListRowStyleModifier()
        }
    }
}

struct ListRowStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .listRowInsets(.init())
            .listRowSeparator(.hidden)
    }
}

extension View {
    func listRowStyle(_ style: ListRowStyle = .hidden) -> some View {
        self.modifier(style.viewModifier)
    }
}
