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
                .frame(width: .xl, height: .xl)
                .clipShape(RoundedRectangle(cornerRadius: .nano))
                .circularBorder(radius: .nano)
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
                .font(.callout)
            Text(data.description)
                .font(.caption2)
                .foregroundStyle(.secondary)
        }
    }
}
