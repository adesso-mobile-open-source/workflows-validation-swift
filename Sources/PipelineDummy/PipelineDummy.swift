// Copyright 2026 adesso SE
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0

/// A minimal, cross-platform Swift package used to exercise CI/CD pipelines.
public enum PipelineDummy {

    /// A human-readable name of the platform this code was compiled for.
    ///
    /// Implemented with `#if os(...)` branches so that each supported
    /// platform (macOS, iOS, watchOS, tvOS, visionOS, Linux) compiles a
    /// slightly different code path, which is useful for validating
    /// cross-platform build pipelines.
    public static var platformName: String {
        #if os(macOS)
        return "macOS"
        #elseif os(iOS)
        return "iOS"
        #elseif os(watchOS)
        return "watchOS"
        #elseif os(tvOS)
        return "tvOS"
        #elseif os(visionOS)
        return "visionOS"
        #elseif os(Linux)
        return "Linux"
        #else
        return "Unknown"
        #endif
    }

    /// A trivial, platform-independent pure function used as a stable
    /// assertion target in tests.
    public static func add(_ lhs: Int, _ rhs: Int) -> Int {
        lhs + rhs
    }
}
