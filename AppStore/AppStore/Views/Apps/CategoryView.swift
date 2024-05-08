import SwiftUI

struct CategoryView: View {
    let categories: [CategoryDto]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(spacing: .quarck) {
                ForEach(categories) { category in
                    buildCategory(category)
                }
            }
            .padding(.trailing, .xxxs)
        })
    }
}

private extension CategoryView {
    @ViewBuilder func buildCategory(_ category: CategoryDto) -> some View {
        ZStack {
            HStack(spacing: .nano) {
                Image(systemName: category.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .xxs, height: .xxs)
                
                Text(category.name)
                    .multilineTextAlignment(.leading)
                    .font(.caption)
                    .foregroundColor(.black.opacity(0.7))
            }
            .padding(.vertical, .quarck)
            .padding(.horizontal, .nano)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.gray.opacity(0.3), radius: .quarck)
        }
        .padding(.quarck)
    }
}
