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
    // v2.0+ SDK 내부 Sentry — 소비자(매체)가 명시하지 않아도 전이로 링크 (podspec s.dependency 대응)
    dependencies: [
        .package(url: "https://github.com/getsentry/sentry-cocoa", "8.0.0"..<"9.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "NStationOfferwallBinary",
            url: "https://github.com/Nasmedia-Tech/iOS-NStationDownload/releases/download/v2.0.0-rc.10/NStationOfferwall2.0.0-rc.10.xcframework.zip",
            checksum: "b8d32f451a5c243ed24c4de8c13eebca51534fb5105e11e6ba4644989e7f78a3"
        ),
        .target(
            name: "iOS_RWD_SPM",
            dependencies: [
                "NStationOfferwallBinary",
                .product(name: "Sentry-Dynamic", package: "sentry-cocoa")
            ],
            path: "Sources/iOS-RWD-SPM"
        )
    ]
)
