// View modifier that scales an image's size.

import SwiftUI

/// Sets an image's frame using a single scaled dimension.
struct ScaledImageSizeModifier: ViewModifier {

    // MARK: - Private Properties

    /// The scaled side length of the image.
    @ClampedScaledMetric private var size: CGFloat

    // MARK: - Initialization

    /// Creates the modifier with a base size.
    ///
    /// - Parameter size: The base size before scaling. Defaults to 24.
    init(size: CGFloat = 24) {
        self._size = ClampedScaledMetric(wrappedValue: size, maximum: 36)
    }

    // MARK: - ViewModifier

    /// Required by ViewModifier.
    func body(content: Content) -> some View {
        content
            .frame(width: size, height: size)
    }

}

extension Image {

    /// Sets the image's size using a single scaled dimension.
    ///
    /// - Parameter size: The base size before scaling. Defaults to 24.
    ///
    /// - Returns: A view sized according to the scaled dimension.
    func size(_ size: CGFloat = 24) -> some View {
        resizable()
            .scaledToFit()
            .modifier(ScaledImageSizeModifier(size: size))
    }

}
