// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YunoAntifraudClearsale",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "YunoAntifraudClearsale",
            targets: ["YunoAntifraudClearsale", "ClearsaleWrapper"])
    ],
    targets: [
        .binaryTarget(
            name: "YunoAntifraudClearsale",
            url: "https://github.com/yuno-payments/yuno-antifraud-clearsale-ios/releases/download/1.3.0/YunoAntifraudClearsale.xcframework.zip",
            checksum: "328b9ef90ce956df85bb83711f8de788d84f801e4a89226a4d404f129003ffad"
        ),
        .binaryTarget(name: "CSBehavior",
                      url: "https://device.clearsale.com.br/ios/sdk-behavior-v3.0.4-xc-release.zip",
                      checksum: "75ce6e31618499736767007c5c96a4d99ba342d4d674cd21a1236b9bb839e969"),
        .target(
            name: "ClearsaleWrapper",
            dependencies: [
                .target(name: "CSBehavior"),
                .target(name: "YunoAntifraudClearsale"),
            ],
            path: "ClearsaleWrapper"
        ),
    ]
)
