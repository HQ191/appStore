import SwiftUI

struct GroupView: View {
    let data: AppGroupDto
    let rowWidth: CGFloat
    
    var body: some View {
        VStack(spacing: .quarck) {
            buildTitleView()
            buildAppListView()
        }
        .padding(.top, .nano)
        .padding(.bottom, .xxs)
    }
    
    private typealias Strings = L10n.Apps
}

private extension GroupView {
    func buildTitleView() -> some View {
        HStack {
            Text(data.title)
                .font(.title3)
                .fontWeight(.bold)
            Spacer()
            Button {
            } label: {
                Text(Strings.Button.seeAll)
                    .font(.caption)
                    .foregroundColor(.accentColor)
            }
        }
        .padding(.trailing, .xxs)
    }
    
    func buildAppListView() -> some View {
        let rows = Array(repeating: GridItem(.fixed(65)), count: 3)
        
        return ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(0..<data.apps.count, id: \.self) { index in
                    buildAppItem(data.apps[index], index: index + 1)
                }
            }
            .padding(.trailing, .xxs)
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
    
    func buildAppItem(_ app: AppItemDto, index: Int) -> some View {
        let isSeparatorVisible = index % 3 != 0 && index != data.apps.count
        
        return AppItemView(data: app, isSeparatorVisible: isSeparatorVisible)
            .frame(width: rowWidth)
    }
}
