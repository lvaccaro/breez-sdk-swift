// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v14),
    ],
    products: [
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/lvaccaro/breez-sdk-swift/releases/download/0.0.4/breez_sdkFFI.xcframework.zip", checksum: "a16bf6ca5b3bbe6bc96e1a7037877028e791f701e00512259b0908860f31247f"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
