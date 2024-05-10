import SwiftUI

struct AppGroupDto: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let apps: [AppItemDto]
}

extension [AppGroupDto] {
    static let mock: [AppGroupDto] = [
        .init(
            title: "App of the Day",
            apps: .mock
        ),
        .init(
            title: "New Apps We Love",
            apps: .mock
        ),
        .init(
            title: "Top Games",
            apps: .mock
        ),
        .init(
            title: "Top Apps",
            apps: .mock
        )
    ]
}
