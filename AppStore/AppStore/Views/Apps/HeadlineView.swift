import SwiftUI

struct HeadlineView: View {
    let headLine: HeadLineDto
    let width: CGFloat
    
    var body: some View {
        VStack {
            buildTitleView()
            buildImageView()
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
    }
}

private extension HeadlineView {
    @ViewBuilder func buildTitleView() -> some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(headLine.type)
                .font(.caption)
                .foregroundStyle(.tint)
            Text(headLine.appName)
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
    
    @ViewBuilder func buildImageView() -> some View {
        ZStack(alignment: .bottom) {
            Image(uiImage: headLine.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(
                    width: width,
                    height: width * 0.7
                )
                .circularBorder()
            
            buildImageOverlay()
        }
    }
    
    func buildImageOverlay() -> some View {
        VStack {
            HStack {
                Image(uiImage: headLine.appIcon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .md, height: .md)
                    .clipShape(RoundedRectangle(cornerRadius: .nano))
                    .circularBorder()
                VStack(alignment: .leading) {
                    Text(headLine.appName)
                        .font(.caption)
                    Text(headLine.appDescription)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                Button{
                } label: {
                    Text("Open")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80, height: 30)
                        .background(Color.black.opacity(0.5))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
            }
            .padding(.xxxs)
        }
        .background(Color.white.opacity(0.3).blur(radius: 5))
    }
}
