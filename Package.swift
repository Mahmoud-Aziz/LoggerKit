// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoggerKit",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LoggerKit",
            targets: ["LoggerKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kasketis/netfox", exact: "1.21.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LoggerKit",
            dependencies: [
                .product(name: "netfox", package: "netfox")
            ]),
        .testTarget(
            name: "LoggerKitTests",
            dependencies: ["LoggerKit"]),
    ]
)
