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
            type: "Your type here",
            headline: "Your headline here",
            image: Image(systemName: "pencil.and.ellipsis.rectangle"),
            app: .init(
                name: "Your App Name Here",
                description: "Your app description here",
                icon: Image(systemName: "pencil.and.ellipsis.rectangle"),
                state: .downloaded
            )
        ),
        HeadLineDto(
            id: "2",
            type: "Your type here",
            headline: "Your headline here",
            image: Image(systemName: "tv.music.note.fill"),
            app: .init(
                name: "Your App Name Here",
                description: "Your app description here",
                icon: Image(systemName: "tv.music.note.fill"),
                state: .purchased
            )
        ),
        HeadLineDto(
            id: "3",
            type: "Your type here",
            headline: "Your headline here",
            image: Image(systemName: "book.fill"),
            app: .init(
                name: "Your App Name Here",
                description: "Your app description here",
                icon: Image(systemName: "book.fill"),
                state: .purchased
            )
        ),
        HeadLineDto(
            id: "4",
            type: "Your type here",
            headline: "Your headline here",
            image: Image(systemName: "location.circle.fill"),
            app: .init(
                name: "Your App Name Here",
                description: "Your app description here",
                icon: Image(systemName: "location.circle.fill"),
                state: .purchased
            )
        )
    ]
}
