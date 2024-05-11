import SwiftUI

struct AppItemDto: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let description: String
    let icon: Image
    let state: AppState
}

extension [AppItemDto] {
    static let mock: [AppItemDto] = [
        AppItemDto(
            name: "Galaxy Guide",
            description: "Know your galaxy",
            icon: Asset.Images.galaxyGuideIcon.swiftUIImage,
            state: .purchased
        ),
        AppItemDto(
            name: "Dine hub",
            description: "Have stunning meals",
            icon: Asset.Images.dineHubIcon.swiftUIImage,
            state: .downloaded
        ),
        AppItemDto(
            name: "Shock Shell",
            description: "Egg defence",
            icon: Asset.Images.shockShellIcon.swiftUIImage,
            state: .notPurchased
        ),
        AppItemDto(
            name: "Nutrient Associate",
            description: "Know your food",
            icon: Asset.Images.nutrientAssociateIcon.swiftUIImage,
            state: .downloaded
        ),
        AppItemDto(
            name: "Galaxy Guide",
            description: "Know your galaxy",
            icon: Asset.Images.galaxyGuideIcon.swiftUIImage,
            state: .purchased
        ),
        AppItemDto(
            name: "Dine hub",
            description: "Have stunning meals",
            icon: Asset.Images.dineHubIcon.swiftUIImage,
            state: .downloaded
        ),
        AppItemDto(
            name: "Shock Shell",
            description: "Egg defence",
            icon: Asset.Images.shockShellIcon.swiftUIImage,
            state: .notPurchased
        ),
        AppItemDto(
            name: "Nutrient Associate",
            description: "Know your food",
            icon: Asset.Images.nutrientAssociateIcon.swiftUIImage,
            state: .downloaded
        )
    ]
}
