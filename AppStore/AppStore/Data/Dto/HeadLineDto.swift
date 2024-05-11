import SwiftUI

struct HeadLineDto: Identifiable {
    let id: String
    let type: String
    let headline: String
    let image: Image
    let app: AppItemDto
}

extension [HeadLineDto] {
    static let mock: [HeadLineDto] = [
        HeadLineDto(
            id: "1",
            type: "GET FIT",
            headline: "Eat healthy, live healthy",
            image: Asset.Images.nutrientAssociate.swiftUIImage,
            app: .init(
                name: "Nutrient Associate",
                description: "Know your food",
                icon: Asset.Images.nutrientAssociateIcon.swiftUIImage,
                state: .downloaded
            )
        ),
        HeadLineDto(
            id: "2",
            type: "FOR KIDS",
            headline: "It's egg defence time",
            image: Asset.Images.shockShell.swiftUIImage,
            app: .init(
                name: "Shock Shell",
                description: "Egg defence",
                icon: Asset.Images.shockShellIcon.swiftUIImage,
                state: .notPurchased
            )
        ),
        HeadLineDto(
            id: "3",
            type: "EDITOR'S CHOICE",
            headline: "Eat your fill",
            image: Asset.Images.dineHub.swiftUIImage,
            app: .init(
                name: "Dine hub",
                description: "Have stunning meals",
                icon: Asset.Images.dineHubIcon.swiftUIImage,
                state: .downloaded
            )
        ),
        HeadLineDto(
            id: "4",
            type: "FEATURED",
            headline: "Learn from experts",
            image: Asset.Images.galaxyGuide.swiftUIImage,
            app: .init(
                name: "Galaxy Guide",
                description: "Know your galaxy",
                icon: Asset.Images.galaxyGuideIcon.swiftUIImage,
                state: .purchased
            )
        )
    ]
}
