// ===----------------------------------------------------------------=== //
//
// Copyright (c) 2026 adesso SE
// Licensed under Apache License v2.0
//
// See LICENSE for license information.
// ===----------------------------------------------------------------=== //

import Testing
@testable import PipelineDummy

@Suite("PipelineDummy")
struct PipelineDummyTests {

    @Test("add sums two integers")
    func addSumsTwoIntegers() {
        #expect(PipelineDummy.add(2, 3) == 5)
        #expect(PipelineDummy.add(-1, 1) == 0)
    }

    @Test("platformName is a known, non-empty value")
    func platformNameIsKnown() {
        let knownPlatforms: Set<String> = [
            "macOS", "iOS", "watchOS", "tvOS", "visionOS", "Linux"
        ]
        #expect(knownPlatforms.contains(PipelineDummy.platformName))
    }
}
