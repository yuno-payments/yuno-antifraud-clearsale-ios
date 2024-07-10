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
    dependencies: [
        .package(name: "YunoSDK", url: "https://github.com/yuno-payments/yuno-sdk-ios.git", .upToNextMajor(from: "1.12.3"))
    ],
    targets: [
        .binaryTarget(
            name: "YunoAntifraudClearsale",
            url: "https://github.com/yuno-payments/yuno-antifraud-clearsale-ios/releases/download/1.0.0/YunoAntifraudClearsale.xcframework.zip",
            checksum: "c8eb70aedb6e53282e3f65ca0991f3e028ea3de62fe8a362c5b14f86e8a82c0b"
        ),
        .binaryTarget(name: "CSBehavior",
                      url: "https://device.clearsale.com.br/ios/sdk-behavior-v3.0.4-xc-release.zip",
                      checksum: "75ce6e31618499736767007c5c96a4d99ba342d4d674cd21a1236b9bb839e969"),
        .target(
            name: "ClearsaleWrapper",
            dependencies: [
                .target(name: "CSBehavior"),
                .target(name: "YunoAntifraudClearsale"),
                .product(name: "YunoSDK", package: "YunoSDK")
            ],
            path: "ClearsaleWrapper"
        ),
    ]
)
