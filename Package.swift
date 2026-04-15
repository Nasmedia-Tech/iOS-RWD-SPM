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
            url: "https://github.com/Nasmedia-Tech/iOS-NStationDownload/releases/download/v1.9.2/NStationOfferwall1.9.2.xcframework.zip",
            checksum: "be2dd450d68abb2ea73989865dda74cbaa498224e2d774f594beaf9c7d340d9a"
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
