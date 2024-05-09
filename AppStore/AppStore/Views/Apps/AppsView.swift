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
            }
            .padding(.leading, .xxs)
            .listStyle(.plain)
        }
    }
    
    @ViewBuilder func buildHealineView(width: CGFloat) -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(viewModel.headlines) { headline in
                    HeadlineView(headLine: headline, width: width)
                }
            }
        }
        .padding(.vertical, .xxs)
    }
    
    private typealias Strings = L10n
}

#Preview {
    AppsView(viewModel: .init())
}
