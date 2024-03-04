// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WavHelper",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WavHelper",
            targets: ["WavHelper"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "WavHelper",
            dependencies: [
                .target(name: "FileWavHelper"),
                
            ]),
        .testTarget(
            name: "WavHelperTests",
            dependencies: ["WavHelper"]),
        .binaryTarget(
            name: "FileWavHelper",
            path: "./Sources/FileWavHelper.xcframework")
    ]
)

