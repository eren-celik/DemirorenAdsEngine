// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DemirorenAdsEngine",
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
            name: "GoogleUserMessagingPlatform",
            path: "./Frameworks/GoogleUserMessagingPlatform.xcframework"
        ),
        .binaryTarget(
            name: "GoogleInteractiveMediaAds",
            path: "./Frameworks/GoogleInteractiveMediaAds.xcframework"
        ),
        .target(
            name: "DemirorenAdsEngine",
            dependencies: [
                .target(name: "GoogleMobileAds"),
                .target(name: "GoogleUserMessagingPlatform"),
                .target(name: "GoogleInteractiveMediaAds"),
            ])
    ]
)
