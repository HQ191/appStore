import SwiftUI

struct AppsView: View {
    @ObservedObject var viewModel: AppsViewModel
    
    var body: some View {
        GeometryReader { geometry in
            let contentWidth = geometry.size.width - .xxs * 2
            List {
                HeaderView()
                    .padding(.trailing, .xxs)
                    .listRowHiddenStyle()
                CategoryView(categories: viewModel.categories)
                    .listRowHiddenStyle()
                
                buildHealineView(width: contentWidth)
                    .listRowHiddenStyle()
                
                buildAppGroupView(width: contentWidth)
                    .listRowHiddenStyle()
                
                QuickLinksView(links: viewModel.quickLinks)
                    .listRowHiddenStyle()
                    .padding(.trailing, .xxs)
            }
            .padding(.leading, .xxs)
            .listStyle(.plain)
        }
    }
    
    func buildHealineView(width: CGFloat) -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(viewModel.headlines) { headline in
                    HeadlineView(headLine: headline, width: width)
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

#Preview {
    AppsView(viewModel: .init())
}
