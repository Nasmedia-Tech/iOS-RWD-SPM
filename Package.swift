// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NStationOfferwall",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "NStationOfferwall",
            targets: ["iOS_RWD_SPM"]),
    ],
    dependencies: [
        // Kingfisher SDK
        .package(
            url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "7.0.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "NStationOfferwallBinary",
            url: "https://github.com/Nasmedia-Tech/iOS-NStationDownload/raw/main/NStationOfferwall1.8.1.xcframework.zip",
            checksum: "c67d77aca1d9d3ead562c04c0d375dc34abccc9b1e0b1f77c985c8c586702bb3"
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
