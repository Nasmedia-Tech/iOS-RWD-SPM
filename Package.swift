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
            checksum: "87ae2abc209e1c223b811e2ec60443ca0a1e60941d1dee9496f5c07e6d2c7d85"
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
