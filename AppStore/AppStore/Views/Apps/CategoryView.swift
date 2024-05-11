import SwiftUI

struct CategoryView: View {
    let categories: [CategoryDto]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: .nano) {
                ForEach(categories) { category in
                    buildCategory(category)
                }
            }
            .padding(.leading, .quarck)
            .padding(.vertical, .quarck)
            .padding(.trailing, .xxxs)
        }
    }
}

private extension CategoryView {
    @ViewBuilder func buildCategory(_ category: CategoryDto) -> some View {
        Button {
            print("Category tapped with name: \(category.name)")
        } label: {
            HStack {
                Image(systemName: category.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .xxs, height: .xxs)
                
                Text(category.name)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.primaryText)
            }
        }
        .padding(.vertical, .nano)
        .padding(.horizontal, .xxxs)
        .background(.onBackground)
        .cornerRadius(.nano)
        .shadow(color: Color.gray.opacity(0.3), radius: .quarck)
    }
}
