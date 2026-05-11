// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "NStationOfferwall",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "NStationOfferwall",
            targets: ["iOS_RWD_SPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher", from: "8.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "NStationOfferwallBinary",
            url: "https://github.com/Nasmedia-Tech/iOS-NStationDownload/releases/download/v1.9.14/NStationOfferwall1.9.14.xcframework.zip",
            checksum: "e32eaa7bd3ea6a0a6619c151224ca4edc6f68292aa43d16800f8c9ea9ddf4cdd"
        ),
        .target(
            name: "iOS_RWD_SPM",
            dependencies: [
                "NStationOfferwallBinary",
                .product(name: "Kingfisher", package: "Kingfisher")
            ],
            path: "Sources/iOS-RWD-SPM"
        )
    ]
)
