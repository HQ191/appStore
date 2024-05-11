import SwiftUI

class AppsViewModel: ObservableObject {
    @Published var categories: [CategoryDto] = .mock
    @Published var dataStream: [Any] = [
        HeadLineDto.mock,
        AppGroupDto.mock1,
        AppGroupDto.mock2,
        BannerDto.mock,
        AppGroupDto.mock3,
        AppGroupDto.mock4
    ]
    @Published var quickLinks: [QuickLinkModel] = .mock
}
