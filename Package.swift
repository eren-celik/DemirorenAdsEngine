// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdsEngine",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "DemirorenAdsEngine",
            targets: ["DemirorenAdsEngine"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "GoogleMobileAds",
            path: "./Frameworks/GoogleMobileAds.xcframework"
        ),
        .binaryTarget(
            name: "UserMessagingPlatform",
            path: "./Frameworks/UserMessagingPlatform.xcframework"
        ),
        .target(
            name: "DemirorenAdsEngine",
            dependencies: [
                .target(name: "GoogleMobileAds"),
                .target(name: "UserMessagingPlatform"),
            ])
    ]
)
