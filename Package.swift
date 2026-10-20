// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ADG-LINEAds-iOS-Adapter",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ADGLINEAdsAdapter",
            type: .static,
            targets: ["ADGLINEAdsAdapterTarget"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/AdGeneration/ADG-iOS-SDK.git",
            "2.43.0"..<"7.0.0"
        ),
        .package(
            url: "https://github.com/ly-ads-network/swift-package-manager-fivead.git",
            exact: "3.1.1"
        ),
    ],
    targets: [
        .target(
            name: "ADGLINEAdsAdapterTarget",
            dependencies: [
                .target(name: "ADGLINEAdsAdapter"),
                .product(name: "ADG", package: "ADG-iOS-SDK"),
                .product(name: "FiveAd", package: "swift-package-manager-fivead"),
            ],
            path: "ADGLINEAdsAdapterTarget"
        ),
        .binaryTarget(
            name: "ADGLINEAdsAdapter",
            url: "https://github.com/AdGeneration/ADG-LINEAds-iOS-Adapter/releases/download/3.1.100/ADGLINEAds.xcframework.zip",
            checksum: "6a70b0094c75c7708c5bbf57e23af0307cf5227ee0d8ccc48874fa8c38ac716d"
        ),
    ]
)
