import SwiftUI

struct AppsView: View {
    @ObservedObject var viewModel: AppsViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: .quarck) {
            Text(Strings.title)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            CategoryView(categories: viewModel.categories)
        }
        .padding(.leading, .xxs)
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .topLeading
        )
    }
    
    private typealias Strings = L10n
}

#Preview {
    AppsView(viewModel: .init())
}
