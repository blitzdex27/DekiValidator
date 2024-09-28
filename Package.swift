// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DekiValidator",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DekiValidator",
            targets: ["DekiValidator"]),
    ],
    dependencies: [
        .package(url: "https://github.com/blitzdex27/DekiParser.git", "1.0.0"..<"2.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DekiValidator",
            dependencies: ["DekiParser"]),
        .testTarget(
            name: "DekiValidatorTests",
            dependencies: ["DekiValidator", "DekiParser"],
            resources: [.process("Resources")]
        ),
    ]
)
