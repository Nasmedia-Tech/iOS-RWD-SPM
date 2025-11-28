// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "NStationOfferwall",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "NStationOfferwall",
            targets: ["iOS_RWD_SPM"]),
    ],
    targets: [
        .binaryTarget(
            name: "NStationOfferwallBinary",
            url: "https://github.com/Nasmedia-Tech/iOS-NStationDownload/raw/main/NStationOfferwall1.8.5.xcframework.zip",
            checksum: "f3b2c1dd1d417a3f75899b045ff700d20728a01a7969fad629e0cb0ed55d1552"
        ),
        .binaryTarget(
            name: "Kingfisher",
            url: "https://github.com/Nasmedia-Tech/iOS-NStationDownload/raw/main/Kingfisher7.12.0-release.xcframework.zip",
            checksum: "12ae2e990d93d47ddc3fe3664ce7dd0ee57dfa9f34ed5cd0813f68b62d1df7e9"
        ),
        .target(
            name: "iOS_RWD_SPM",
            dependencies: [
                "NStationOfferwallBinary",
                "Kingfisher"
            ],
            path: "Sources/iOS-RWD-SPM"
        )
    ]
)
