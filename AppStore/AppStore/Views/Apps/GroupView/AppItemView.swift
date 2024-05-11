import SwiftUI

struct AppItemView: View {
    let data: AppItemDto
    let isSeparatorVisible: Bool
    let onTap: () -> Void
    
    var body: some View {
        HStack {
            data.icon
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .xxl, height: .xxl)
                .circularBorder(radius: .xxxs)
            HStack {
                buildTextView()
                Spacer()
                AppStateButton(appState: data.state, style: .solid) {
                    print("App state button tapped for \(data.name)")
                }
            }
            .padding(.bottom, .nano)
            .frame(maxHeight: .infinity)
            .divider(
                color: isSeparatorVisible ? .gray.opacity(0.15) : .clear,
                thickness: .quarck,
                padding: .zero
            )
        }
        .gesture(
            TapGesture().onEnded { _ in
                onTap()
            }
        )
    }
    
    private func buildTextView() -> some View {
        VStack(alignment: .leading) {
            Text(data.name)
                .font(.body)
            Text(data.description)
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
    }
}
