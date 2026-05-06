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
            url: "https://github.com/Nasmedia-Tech/iOS-NStationDownload/releases/download/v1.9.10/NStationOfferwall1.9.10.xcframework.zip",
            checksum: "6dc4113783fb34ab23035568518bbd8b5c5637dba3e159f1bd170626684a844a"
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
