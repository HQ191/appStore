import SwiftUI

struct HeadlineView: View {
    let headLine: HeadLineDto
    let width: CGFloat
    let onTap: () -> Void
    
    var body: some View {
        VStack {
            buildTitleView()
            buildImageView()
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .gesture(
            TapGesture().onEnded { _ in
                onTap()
            }
        )
    }
}

private extension HeadlineView {
    func buildTitleView() -> some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(headLine.type)
                .font(.caption)
                .foregroundStyle(.tint)
            Text(headLine.app.name)
                .font(.title2)
                .lineLimit(1)
            Text(headLine.headline)
                .font(.title3)
                .foregroundStyle(.secondary)
                .lineLimit(1)
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
    }
    
    func buildImageView() -> some View {
        ZStack(alignment: .bottom) {
            headLine.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(
                    width: width,
                    height: width * 0.6
                )
                .circularBorder(radius: .quarck)
            
            buildImageOverlay()
        }
    }
    
    func buildImageOverlay() -> some View {
        VStack {
            HStack {
                headLine.app.icon
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .md, height: .md)
                    .clipShape(RoundedRectangle(cornerRadius: .nano))
                    .circularBorder()
                VStack(alignment: .leading) {
                    Text(headLine.app.name)
                        .font(.caption)
                    Text(headLine.app.description)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                AppStateButton(appState: headLine.app.state, style: .opaque) {
                    print("App state button tapped for \(headLine.app.name)")
                }
            }
            .padding(.xxxs)
        }
        .background(Color.white.opacity(0.3).blur(radius: 5))
    }
}
