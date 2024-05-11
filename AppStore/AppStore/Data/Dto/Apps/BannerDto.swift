struct BannerDto {
    let title: String
    let bannerItems: [BannerItemDto]
}

extension BannerDto {
    static let mock: BannerDto = .init(
        title: "Our Top Ten...",
        bannerItems: [
            BannerItemDto(
                title: "Our Top 10 Dating Apps",
                image: Asset.Images.galaxyGuide.swiftUIImage
            ),
            BannerItemDto(
                title: "Our Top 10 Social Apps",
                image: Asset.Images.dineHub.swiftUIImage
            ),
            BannerItemDto(
                title: "Our Top 10 Fitness Apps",
                image: Asset.Images.nutrientAssociate.swiftUIImage
            )
        ]
    )
}
