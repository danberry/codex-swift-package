// Property wrapper that scales a CGFloat to a maximum value.

import SwiftUI

/// Scales a CGFloat to a defined maximum using ScaledMetric.
@propertyWrapper struct ClampedScaledMetric {

    // MARK: - Private Properties

    /// The base value scaled according to the user's Dynamic Type setting.
    @ScaledMetric private var metric: CGFloat

    /// The upper bound for the scaled value.
    private let maximum: CGFloat

    // MARK: - Computed Properties

    /// The scaled value clamped to the provided maximum.
    var wrappedValue: CGFloat {
        min(metric, maximum)
    }

    // MARK: - Initialization

    /// Creates the wrapper with an initial value and an optional maximum.
    ///
    /// - Parameters:
    ///   - wrappedValue: The base value that should be scaled.
    ///   - maximum: The upper bound for the scaled value. If `nil`, the wrapped value is used.
    init(wrappedValue: CGFloat, maximum: CGFloat? = nil) {
        let resolvedMaximum = maximum ?? wrappedValue
        self._metric = ScaledMetric(wrappedValue: wrappedValue)
        self.maximum = resolvedMaximum
    }

}
