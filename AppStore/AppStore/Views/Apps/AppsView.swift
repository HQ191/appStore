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
                .font(.subheadline)
                .fontWeight(.semibold)
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
                HeaderView()
                    .padding(.trailing, .xxs)
                    .listRowHiddenStyle()
                
                CategoryView(categories: viewModel.categories)
                    .listRowHiddenStyle()
                    .onOffsetChange(geometry) { offset in
                        setTitleBarHidden(offset.y < 50)
                    }
                
                buildHealineView(width: contentWidth)
                    .listRowHiddenStyle()
                
                buildAppGroupView(width: contentWidth)
                    .listRowHiddenStyle()
                
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
    
    func buildHealineView(width: CGFloat) -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(viewModel.headlines) { headline in
                    HeadlineView(headLine: headline, width: width) {
                        print("Headline tapped with title: \(headline.headline)")
                    }
                }
            }
            .padding(.trailing, .xxs)
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
        .padding(.vertical, .xxs)
    }
    
    func buildAppGroupView(width: CGFloat) -> some View {
        VStack(spacing: .zero) {
            ForEach(viewModel.appGroups) { appGroup in
                Divider().padding(.trailing, .xxs)
                GroupView(data: appGroup, rowWidth: width)
            }
        }
        .padding(.top, .nano)
    }
}
