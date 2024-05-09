import SwiftUI

class AppsViewModel: ObservableObject {
    @Published var categories: [CategoryDto] = .default
    @Published var headlines: [HeadLineDto] = .default
}
