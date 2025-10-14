import Foundation
import Kingfisher

@_exported import Kingfisher

/// Kingfisher 초기화를 강제하는 브릿지
enum NStation_KF_Bridge {
    static func linkKingfisher() {
        // Kingfisher의 실제 심볼을 참조해서 링커가 제거하지 못하도록 함
        print("linkKingfisher")
        _ = KingfisherManager.shared.cache.memoryStorage.config.totalCostLimit
    }

    // 정적 초기화 블록 (프레임워크 로드 시 자동 실행)
    static let _initialized: Void = {
        linkKingfisher()
    }()
}

// 프레임워크 로드 시 자동으로 실행
@_cdecl("NStationOfferwall_Initialize")
public func NStationOfferwall_Initialize() {
    _ = NStation_KF_Bridge._initialized
}

@objc final class NStationOfferwallAutoInit: NSObject {
    private static let initializeOnce: Void = {
        print("initializeOnce")
        _ = KingfisherManager.shared
        return ()
    }()
}
