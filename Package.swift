// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "PipelineDummy",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .watchOS(.v9),
        .tvOS(.v16),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "PipelineDummy",
            targets: ["PipelineDummy"]
        )
    ],
    targets: [
        .target(
            name: "PipelineDummy"
        ),
        .testTarget(
            name: "PipelineDummyTests",
            dependencies: ["PipelineDummy"]
        )
    ]
)
