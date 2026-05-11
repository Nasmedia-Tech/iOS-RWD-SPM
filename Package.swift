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
            checksum: "eb9e5ee4e7683a3fcd459e2ca74102a1b5be85f15feb5cb4b9ed554f9c48c166"
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
