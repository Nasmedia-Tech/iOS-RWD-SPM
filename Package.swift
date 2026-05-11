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
            url: "https://github.com/Nasmedia-Tech/iOS-NStationDownload/releases/download/v1.9.11/NStationOfferwall1.9.11.xcframework.zip",
            checksum: "aa83e4d99c7e8673b5e5fd0b48a9ae3596b6007affdb628075c42c7ef6da36c1"
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
