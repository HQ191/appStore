import SwiftUI

struct GroupView: View {
    let data: AppGroupDto
    let rowWidth: CGFloat
    let onSeeAllTap: () -> Void
    let onAppTap: (AppItemDto) -> Void
    
    var body: some View {
        VStack(spacing: .quarck) {
            buildTitleView()
            buildAppListView()
        }
    }
    
    private typealias Strings = L10n.Apps
}

private extension GroupView {
    func buildTitleView() -> some View {
        HStack {
            VStack(alignment: .leading) {
                Text(data.title)
                    .font(.title3)
                    .fontWeight(.semibold)
                if let subtitle = data.subtitle {
                    Text(subtitle)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
            }
            Spacer()
            Button(Strings.Button.seeAll, action: onSeeAllTap)
            .buttonStyle(.plain)
            .foregroundStyle(.tint)
            .font(.footnote)
        }
        .padding(.trailing, .xxs)
    }
    
    func buildAppListView() -> some View {
        let rows = Array(repeating: GridItem(.fixed(.xxl)), count: 3)
        
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
        
        return AppItemView(data: app, isSeparatorVisible: isSeparatorVisible) {
            onAppTap(app)
        }
        .frame(width: rowWidth)
    }
}
