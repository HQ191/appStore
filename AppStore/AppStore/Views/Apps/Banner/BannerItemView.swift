import SwiftUI

struct BannerItemView: View {
    let data: BannerItemDto
    let width: CGFloat
    let onTap: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: .nano) {
            buildImageView()
            Text(data.title)
                .font(.footnote)
        }
        .frame(maxWidth: .infinity)
        .gesture(
            TapGesture().onEnded { _ in
                onTap()
            }
        )
    }
    
    func buildImageView() -> some View {
        data.image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(
                width: width,
                height: width * 0.6
            )
            .clipShape(RoundedRectangle(cornerRadius: .nano))
            .circularBorder()
        
    }
}
