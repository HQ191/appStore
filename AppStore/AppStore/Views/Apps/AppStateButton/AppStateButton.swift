import SwiftUI
import Combine

struct AppStateButton: View {
    var tapPublisher: AnyPublisher<Void, Never> {
        tapSubject.eraseToAnyPublisher()
    }
    
    let appState: AppState
    let style: Style
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Button{
                tapSubject.send()
            } label: {
                if let title = appState.title {
                    buildTextView(title)
                }
                if let icon = appState.icon {
                    buildIconView(icon)
                }
            }
            
            if appState == .notPurchased {
                buildSubTextView()
            }
        }
    }
    
    private let tapSubject = PassthroughSubject<Void, Never>()
    private typealias Strings = L10n.AppStateButton
}

private extension AppStateButton {
    func buildTextView(_ text: String) -> some View {
        Text(text)
            .font(.caption)
            .fontWeight(.bold)
            .foregroundColor(style.tint)
            .frame(width: .xxxl, height: .sm)
            .background(style.backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: .xxxs))
            .padding(.vertical, .nano)
    }
    
    func buildIconView(_ icon: UIImage) -> some View {
        Image(uiImage: icon)
            .resizable()
            .renderingMode(.template)
            .foregroundStyle(style.tint)
            .aspectRatio(contentMode: .fit)
            .frame(width: .xs, height: .xs)
    }
    
    func buildSubTextView() -> some View {
        Text(Strings.inappPurchase)
            .font(.system(size: .nano))
            .foregroundColor(.black.opacity(0.7))
            .padding(.bottom, -.quarck)
    }
}

private extension AppState {
    var title: String? {
        switch self {
        case .notPurchased: Strings.get
        case .purchased: nil
        case .downloaded: Strings.open
        case .updateAvailable: Strings.update
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .purchased: UIImage(systemName: "icloud.and.arrow.down")
        default: nil
        }
    }
    
    private typealias Strings = L10n.AppStateButton.Button
}
