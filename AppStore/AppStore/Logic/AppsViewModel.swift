import SwiftUI

class AppsViewModel: ObservableObject {
    @Published var categories: [CategoryDto] = .default
}
