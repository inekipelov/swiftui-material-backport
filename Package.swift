// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MaterialBackport",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "MaterialBackport",
            targets: ["MaterialBackport"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/inekipelov/swift-backport-pattern.git", from: "0.2.0")
    ],
    targets: [
        .target(
            name: "MaterialBackport",
            dependencies: [
                .product(name: "Backport", package: "swift-backport-pattern")
            ]
        ),
        .testTarget(
            name: "MaterialBackportTests",
            dependencies: ["MaterialBackport"]
        )
    ]
)
