// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "vapor-asndecoder",
    platforms: [
        .macOS(.v13),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "vapor-asndecoder",
            targets: ["vapor-asndecoder"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/jwt", from: "5.1.2"),
    ],
    targets: [
        .target(
            name: "vapor-asndecoder",
            dependencies: [
                .product(name: "JWT", package: "jwt"),
            ]
        ),
    ]
)
