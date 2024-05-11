import SwiftUI

struct AppsView: View {
    @ObservedObject var viewModel: AppsViewModel
    @State private var isTitleBarVisible = false

    var body: some View {
        ZStack(alignment: .top) {
            buildContentView()
            if isTitleBarVisible {
                buildTitleBar()
            }
        }
    }
    
    private typealias Strings = L10n.Apps
}

private extension AppsView {
    func buildTitleBar() -> some View {
        VStack(alignment: .center) {
            Spacer()
            Text(Strings.title)
                .font(.headline)
                .fontWeight(.bold)
            Spacer()
            Divider().frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .md)
        .background(.regularMaterial)
    }
    
    
    func buildContentView() -> some View {
        GeometryReader { geometry in
            let contentWidth = geometry.size.width - .xxs * 2
            List {
                HeaderView(profileImage: viewModel.profileImage)
                    .padding(.trailing, .xxs)
                    .listRowHiddenStyle()
                
                CategoryView(categories: viewModel.categories)
                    .listRowHiddenStyle()
                    .onOffsetChange(geometry) { offset in
                        setTitleBarHidden(offset.y < 50)
                    }
                
                ForEach(0..<viewModel.dataStream.count, id: \.self) { index in
                    let data = viewModel.dataStream[index]
                    buildStreamView(data: data, contentWidth: contentWidth)
                        .listRowHiddenStyle()
                }
                
                QuickLinksView(links: viewModel.quickLinks)
                    .listRowHiddenStyle()
                    .padding(.trailing, .xxs)
            }
            .scrollIndicators(.hidden)
            .padding(.leading, .xxs)
            .listStyle(.plain)
        }
    }
    
    func setTitleBarHidden(_ hidden: Bool) {
        withAnimation(.easeIn(duration: 0.2)) {
            isTitleBarVisible = hidden
        }
    }
    
    @ViewBuilder func buildStreamView(data: Any, contentWidth: CGFloat) -> some View {
        if let headline = data as? HeadLineDto {
            buildHeadlineView(headline: headline, rowWidth: contentWidth)
        }
        else if let appGroup = data as? AppGroupDto {
            buildAppGroupView(appGroup: appGroup, width: contentWidth)
        }
        else if let banner = data as? BannerDto {
            buildBannerView(banner: banner, width: contentWidth)
        }
    }
    
    func buildHeadlineView(headline: HeadLineDto, rowWidth: CGFloat) -> some View {
        HeadlineView(headline: headline, rowWidth: rowWidth) { headline in
            print("Headline tapped: \(headline.headline)")
        } onAppTap: { headline in
            print("App tapped: \(headline.app.name)")
        }
        .padding(.vertical, .xxs)
    }
    
    func buildAppGroupView(appGroup: AppGroupDto, width: CGFloat) -> some View {
        VStack(spacing: .nano) {
            Divider().padding(.trailing, .xxs)
            GroupView(data: appGroup, rowWidth: width) {
                print("See all tapped for \(appGroup.title)")
            } onAppTap: { app in
                print("App tapped: \(app.name)")
            }
            .padding(.bottom, .xxs)
        }
        .padding(.top, .nano)
    }
    
    func buildBannerView(banner: BannerDto, width: CGFloat) -> some View {
        VStack(spacing: .nano) {
            Divider().padding(.trailing, .xxs)
            BannerView(data: banner, width: width) { banner in
                print("Banner tapped: \(banner.title)")
            }
            .padding(.bottom, .xxxs)
        }
        .padding(.top, .nano)
    }
}
