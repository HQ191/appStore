import UIKit

struct HeadLineDto: Identifiable {
    let id: String
    let appName: String
    let appDescription: String
    let appIcon: UIImage
    let headline: String
    let type: String
    let image: UIImage
    let appState: AppState
}

extension [HeadLineDto] {
    static let `default`: [HeadLineDto] = [
        HeadLineDto(
            id: "1",
            appName: "Your App Name Here",
            appDescription: "Your app description here",
            appIcon: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            headline: "Your headline here",
            type: "Your type here",
            image: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            appState: .notPurchased
        ),
        HeadLineDto(
            id: "2",
            appName: "Your App Name Here",
            appDescription: "Your app description here",
            appIcon: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            headline: "Your headline here",
            type: "Your type here",
            image: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            appState: .notPurchased
        ),
        HeadLineDto(
            id: "3",
            appName: "Your App Name Here",
            appDescription: "Your app description here",
            appIcon: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            headline: "Your headline here",
            type: "Your type here",
            image: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            appState: .notPurchased
        ),
        HeadLineDto(
            id: "4",
            appName: "Your App Name Here",
            appDescription: "Your app description here",
            appIcon: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            headline: "Your headline here",
            type: "Your type here",
            image: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            appState: .notPurchased
        ),
        HeadLineDto(
            id: "5",
            appName: "Your App Name Here",
            appDescription: "Your app description here",
            appIcon: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            headline: "Your headline here",
            type: "Your type here",
            image: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            appState: .notPurchased
        ),
        HeadLineDto(
            id: "6",
            appName: "Your App Name Here",
            appDescription: "Your app description here",
            appIcon: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            headline: "Your headline here",
            type: "Your type here",
            image: UIImage(systemName: "pencil.and.ellipsis.rectangle")!,
            appState: .notPurchased
        )
    ]
}
