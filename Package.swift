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
            name: "GMobileAds",
            path: "./Frameworks/GMobileAds.xcframework"
        ),
        .binaryTarget(
            name: "GUserMessagingPlatform",
            path: "./Frameworks/GUserMessagingPlatform.xcframework"
        ),
        .target(
            name: "DemirorenAdsEngine",
            dependencies: [
                .target(name: "GMobileAds"),
                .target(name: "GUserMessagingPlatform"),
            ])
    ]
)
