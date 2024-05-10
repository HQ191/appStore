import SwiftUI

class AppsViewModel: ObservableObject {
    @Published var categories: [CategoryDto] = .mock
    @Published var headlines: [HeadLineDto] = .mock
    @Published var appGroups: [AppGroupDto] = .mock
}
