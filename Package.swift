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
            url: "https://github.com/Nasmedia-Tech/iOS-NStationDownload/raw/main/NStationOfferwall1.8.3-beta.1.xcframework.zip",
            checksum: "2b146764887bcc3e4d79d7d72eb43f1e520f12741e8bb508813e02fe16764d89"
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
