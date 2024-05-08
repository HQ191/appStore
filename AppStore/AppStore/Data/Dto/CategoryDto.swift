struct CategoryDto: Identifiable {
    let id: Int
    let name: String
    let image: String
}

extension [CategoryDto] {
    static let `default`: [CategoryDto] = [
        CategoryDto(id: 1, name: "Reference", image: "pencil.and.ellipsis.rectangle"),
        CategoryDto(id: 2, name: "Music", image: "tv.music.note.fill"),
        CategoryDto(id: 3, name: "Education", image: "book.fill"),
        CategoryDto(id: 4, name: "Navigation", image: "location.circle.fill"),
        CategoryDto(id: 5, name: "Weather", image: "cloud.drizzle.fill"),
        CategoryDto(id: 6, name: "Sports", image: "sportscourt.fill"),
        CategoryDto(id: 7, name: "Games", image: "gamecontroller.fill")
    ]
}
