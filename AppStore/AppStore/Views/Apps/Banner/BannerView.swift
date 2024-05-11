import SwiftUI

struct BannerView: View {
    let data: BannerDto
    let width: CGFloat
    let onTap: (BannerItemDto) -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: .quarck) {
            Text(data.title)
                .font(.title2)
                .fontWeight(.bold)
            buildBannerList()
        }
    }
    
    private func buildBannerList() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: .nano) {
                ForEach(data.bannerItems) { banner in
                    BannerItemView(data: banner, width: width * 0.7) {
                        onTap(banner)
                    }
                }
            }
            .padding(.trailing, .xxs)
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}
