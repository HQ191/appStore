import SwiftUI

struct QuickLinksView: View {
    let links: [QuickLinkModel]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(Strings.title)
                .font(.title2)
                .fontWeight(.bold)
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
        Button(link.title) {
            print("Link tapped with title: \(link.title)")
        }
        .font(.title3)
        .foregroundStyle(.tint)
        .buttonStyle(.plain)
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
        Button {
            print("Button tapped with title: \(title)")
        } label: {
            Text(title)
                .foregroundStyle(.tint)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity)
                .padding(.vertical, .thin)
        }
        .frame(maxWidth: .infinity)
        .buttonStyle(.bordered)
    }
    
    private typealias Strings = L10n.QuickLinksView
}
