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
            name: "Your App Name Here",
            description: "Your app description here",
            icon: Image(systemName: "pencil.and.ellipsis.rectangle"),
            state: .notPurchased
        ),
        AppItemDto(
            name: "Your App Name Here",
            description: "Your app description here",
            icon: Image(systemName: "tv.music.note.fill"),
            state: .purchased
        ),
        AppItemDto(
            name: "Your App Name Here",
            description: "Your app description here",
            icon: Image(systemName: "book.fill"),
            state: .updateAvailable
        ),
        AppItemDto(
            name: "Your App Name Here",
            description: "Your app description here",
            icon: Image(systemName: "location.circle.fill"),
            state: .notPurchased
        ),
        AppItemDto(
            name: "Your App Name Here",
            description: "Your app description here",
            icon: Image(systemName: "pencil.and.ellipsis.rectangle"),
            state: .notPurchased
        ),
        AppItemDto(
            name: "Your App Name Here",
            description: "Your app description here",
            icon: Image(systemName: "tv.music.note.fill"),
            state: .notPurchased
        ),
        AppItemDto(
            name: "Your App Name Here",
            description: "Your app description here",
            icon: Image(systemName: "book.fill"),
            state: .notPurchased
        ),
        AppItemDto(
            name: "Your App Name Here",
            description: "Your app description here",
            icon: Image(systemName: "location.circle.fill"),
            state: .notPurchased
        )
    ]
}
