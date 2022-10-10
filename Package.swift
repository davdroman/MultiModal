// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MultiModal",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .library(name: "MultiModal", targets: ["MultiModal"]),
    ],
    targets: [
        .target(name: "MultiModal"),
        .testTarget(name: "MultiModalTests", dependencies: ["MultiModal"]),

        .executableTarget(name: "Benchmarks", dependencies: [
            .product(name: "Benchmark", package: "swift-benchmark"),
            .target(name: "MultiModal"),
        ]),
    ]
)

package.dependencies = [
    .package(url: "https://github.com/google/swift-benchmark", from: "0.1.2"),
]
