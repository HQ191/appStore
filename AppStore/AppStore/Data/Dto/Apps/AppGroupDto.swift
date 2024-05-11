import SwiftUI

struct AppGroupDto: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    var subtitle: String?
    let apps: [AppItemDto]
}

extension AppGroupDto {
    static let mock1 = AppGroupDto(
            title: "This Week's Favorites",
            apps: .mock
        )
    
    static let mock2 = AppGroupDto(
            title: "New Apps We Love",
            subtitle: "Get them while they're hot",
            apps: .mock
        )
    
    static let mock3 = AppGroupDto(
            title: "Top Games",
            apps: .mock
        )
    
    static let mock4 = AppGroupDto(
            title: "Top Apps",
            subtitle: "Selected by App Store editors",
            apps: .mock
        )
}
