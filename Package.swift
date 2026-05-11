// swift-tools-version: 5.9

import PackageDescription

// NStationOfferwall v1.9.15 부터 Kingfisher 를 SDK 내부에 static 으로 흡수하므로
// 외부 Kingfisher SPM 의존성은 더 이상 필요 없음. (옛 v1.9.14 까지는 dynamic
// Kingfisher.framework 의존성이 있어 SPM 사용자 측에서 launch 시 dyld 크래시 발생.)
let package = Package(
    name: "NStationOfferwall",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "NStationOfferwall",
            targets: ["iOS_RWD_SPM"]),
    ],
    targets: [
        .binaryTarget(
            name: "NStationOfferwallBinary",
            url: "https://github.com/Nasmedia-Tech/iOS-NStationDownload/releases/download/v1.9.17/NStationOfferwall1.9.17.xcframework.zip",
            checksum: "30c041a9455c3fb96252749514a7305fe5df87a72d065b13cfdacd6f2efd1d8c"
        ),
        .target(
            name: "iOS_RWD_SPM",
            dependencies: [
                "NStationOfferwallBinary"
            ],
            path: "Sources/iOS-RWD-SPM"
        )
    ]
)
