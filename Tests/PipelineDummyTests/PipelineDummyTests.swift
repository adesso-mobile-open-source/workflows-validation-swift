// Copyright 2026 adesso SE
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0

@testable import PipelineDummy
import Testing

@Suite("PipelineDummy")
struct PipelineDummyTests {
    @Test
    func `add sums two integers`() {
        #expect(PipelineDummy.add(2, 3) == 5)
        #expect(PipelineDummy.add(-1, 1) == 0)
    }

    @Test
    func `platformName is a known, non-empty value`() {
        let knownPlatforms: Set = [
            "macOS", "iOS", "watchOS", "tvOS", "visionOS", "Linux"
        ]
        #expect(knownPlatforms.contains(PipelineDummy.platformName))
    }
}
