import SwiftUI

struct HeadlineItemView: View {
    let headLine: HeadLineItemDto
    let width: CGFloat
    let onTap: () -> Void
    let onAppTap: () -> Void
    
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

private extension HeadlineItemView {
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
                .aspectRatio(contentMode: .fill)
                .frame(
                    width: width,
                    height: width * 0.6
                )
                .clipShape(RoundedRectangle(cornerRadius: .nano))
                .circularBorder()
            
            buildImageOverlay()
        }
    }
    
    func buildImageOverlay() -> some View {
        VStack {
            HStack {
                headLine.app.icon
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: .md, height: .md)
                    .clipShape(RoundedRectangle(cornerRadius: .nano))
                    .circularBorder()
                VStack(alignment: .leading) {
                    Text(headLine.app.name)
                        .font(.callout)
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                    Text(headLine.app.description)
                        .font(.footnote)
                        .foregroundStyle(.black.opacity(0.5))
                }
                Spacer()
                AppStateButton(appState: headLine.app.state, style: .opaque) {
                    onAppTap()
                }
            }
            .padding(.xxxs)
        }
        .background(Color.white.opacity(0.5).blur(radius: 10))
    }
}
