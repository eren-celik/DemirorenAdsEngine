// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdsEngine",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AdsEngine",
            targets: ["AdsEngine"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "GoogleMobileAds",
            path: "./GoogleMobileAds.xcframework"
        ),
        .binaryTarget(
            name: "UserMessagingPlatform",
            path: "./UserMessagingPlatform.xcframework"
        ),
        .target(
            name: "AdsEngine",
            dependencies: [
                .target(name: "GoogleMobileAds"),
                .target(name: "UserMessagingPlatform"),
            ])
    ]
)
