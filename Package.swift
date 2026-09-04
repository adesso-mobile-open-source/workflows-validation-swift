// swift-tools-version: 6.2

// Copyright 2026 adesso SE
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0

import PackageDescription

let package = Package(
    name: "PipelineDummy",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .watchOS(.v9),
        .tvOS(.v16),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "PipelineDummy",
            targets: ["PipelineDummy"]
        ),
    ],
    targets: [
        .target(
            name: "PipelineDummy"
        ),
        .testTarget(
            name: "PipelineDummyTests",
            dependencies: ["PipelineDummy"]
        ),
    ]
)
