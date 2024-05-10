struct QuickLinkModel: Codable, Identifiable {
    var id: String { title }
    var title: String
    var url: String
}

extension [QuickLinkModel] {
    static let mock: [QuickLinkModel] = [
        QuickLinkModel(title: "About the App Store", url: "https://www.google.com"),
        QuickLinkModel(title: "Report a Problem", url: "https://www.google.com"),
        QuickLinkModel(title: "About In-App Purchases", url: "https://www.google.com"),
        QuickLinkModel(title: "About Family Sharing", url: "https://www.google.com"),
        QuickLinkModel(title: "Manage Your Subscriptions", url: "https://www.google.com")
    ]
}
