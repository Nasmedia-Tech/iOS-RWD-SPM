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
            url: "https://github.com/Nasmedia-Tech/iOS-NStationDownload/releases/download/v1.9.23/NStationOfferwall1.9.23.xcframework.zip",
            checksum: "ae52221b7e574c11f0dcf21d25436258a01a3e4435e5fa0dd8801465974f60a9"
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
