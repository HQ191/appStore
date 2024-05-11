import SwiftUI

struct BannerView: View {
    let data: BannerDto
    let width: CGFloat
    
    var body: some View {
        VStack(alignment: .leading, spacing: .quarck) {
            Text(data.title)
                .font(.title3)
                .fontWeight(.semibold)
            buildBannerList()
        }
    }
    
    private func buildBannerList() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: .nano) {
                ForEach(data.bannerItems) { banner in
                    BannerItemView(data: banner, width: width * 0.7)
                }
            }
            .padding(.trailing, .xxs)
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

struct BannerItemView: View {
    let data: BannerItemDto
    let width: CGFloat
    
    var body: some View {
        VStack(alignment: .leading, spacing: .quarck) {
            buildImageView()
            Text(data.title)
                .font(.caption)
        }
        .frame(maxWidth: .infinity)
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
