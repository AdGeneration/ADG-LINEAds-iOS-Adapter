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
            exact: "3.1.2"
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
            url: "https://github.com/AdGeneration/ADG-LINEAds-iOS-Adapter/releases/download/3.1.200/ADGLINEAds.xcframework.zip",
            checksum: "2eb6961f7e3f07c4ec5b96cbbf7f48eb8045932b132e40433a49dfc4a0cbd672"
        ),
    ]
)
