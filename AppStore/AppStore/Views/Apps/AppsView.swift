import SwiftUI

struct AppsView: View {
    @ObservedObject var viewModel: AppsViewModel
    
    var body: some View {
        List {
            HeaderView()
                .listRowStyle(.hidden)
            CategoryView(categories: viewModel.categories)
                .listRowStyle(.hidden)
        }
        .listStyle(.plain)
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
