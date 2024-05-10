import SwiftUI

struct GroupView: View {
    let data: AppGroupDto
    let rowWidth: CGFloat
    
    var body: some View {
        VStack(spacing: .quarck) {
            buildTitleView()
            buildAppItemView()
        }
        .padding(.vertical, .xxxs)
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
    
    func buildAppItemView() -> some View {
        let rows = Array(repeating: GridItem(.fixed(65)), count: 3)
        
        return ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(data.apps) { app in
                    AppItemView(data: app)
                        .frame(width: rowWidth)
                }
            }
        }
    }
}
