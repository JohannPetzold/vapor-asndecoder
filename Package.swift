// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "vapor-asndecoder",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .tvOS(.v16),
        .watchOS(.v9)
    ],
    products: [
        .library(
            name: "ASNDecoder",
            targets: ["ASNDecoder"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/jwt", from: "5.1.2"),
    ],
    targets: [
        .target(
            name: "ASNDecoder",
            dependencies: [
                .product(name: "JWT", package: "jwt"),
            ]
        ),
    ]
)
