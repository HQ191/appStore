import SwiftUI

struct AppGroupDto: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    var subtitle: String?
    let apps: [AppItemDto]
}

extension [AppGroupDto] {
    static let mock: [AppGroupDto] = [
        .init(
            title: "This Week's Favorites",
            apps: .mock
        ),
        .init(
            title: "New Apps We Love",
            subtitle: "Get them while they're hot",
            apps: .mock
        ),
        .init(
            title: "Top Games",
            apps: .mock
        ),
        .init(
            title: "Top Apps",
            subtitle: "Selected by App Store editors",
            apps: .mock
        )
    ]
}
