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
            checksum: "294b96b34764b4228d9dd48430f5f4049cab76c70b12917f6347cc8607d7e88b"
        ),
        .binaryTarget(name: "CSBehavior",
                      url: "https://device.clearsale.com.br/ios/CSBehavior.xcframework-4.0.9.zip",
                      checksum: "33fc62b08f3b4449fd94b42df9623357a929e71d965e4a55147365adaaf6383d"),
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
