// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MultiModal",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MultiModal",
            targets: ["MultiModal"]
        ),
    ],
    targets: [
        .target(name: "MultiModal"),
    ]
)
