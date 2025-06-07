// Tests for the SwiftUIComponents package.
import Testing
@testable import SwiftUIComponents
import Foundation

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
}

@Test func clampedScaledMetricClamps() async throws {
    struct Holder {
        @ClampedScaledMetric(maximum: 20) var value: CGFloat = 25
    }

    let h = Holder()
    #expect(h.value == 20)
}

@Test func clampedScaledMetricDefaultsMaximum() async throws {
    struct Holder {
        @ClampedScaledMetric var value: CGFloat = 12
    }

    let h = Holder()
    #expect(h.value == 12)
}
