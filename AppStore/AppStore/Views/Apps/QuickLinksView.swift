import SwiftUI

struct QuickLinksView: View {
    let links: [QuickLinkModel]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(Strings.title)
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top, .xs)
            
            buttonQuickLinkView()
            buildButtonView()
        }
        .frame(maxWidth: .infinity)
    }
    
    private func buttonQuickLinkView() -> some View {
        ForEach(0..<links.count, id: \.self) { index in
            let link = links[index]
            buildLinkItem(link)
            if index != links.count - 1 {
                Divider()
            }
        }
    }
    
    private func buildLinkItem(_ link: QuickLinkModel) -> some View {
        Text(link.title)
            .font(.headline)
            .fontWeight(.light)
            .foregroundStyle(.tint)
            .padding(.vertical, .thin)
    }
    
    private func buildButtonView() -> some View {
        VStack(spacing: .nano) {
            buildButton(title: Strings.Button.redeem)
            buildButton(title: Strings.Button.sendGift)
            buildButton(title: Strings.Button.addFunds)
        }
        .padding(.vertical, .xxxs)
    }
    
    private func buildButton(title: String) -> some View {
        Button(title) {
        }
        .buttonStyle(.bordered)
        .font(.caption)
        .frame(maxWidth: .infinity)
    }
    
    private typealias Strings = L10n.QuickLinksView
}
