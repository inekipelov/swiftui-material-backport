import SwiftUI
import Backport

public extension ShapeStyle where Self == Color {
    /// A namespace for `ShapeStyle` backports.
    ///
    /// Use this property to access backported shape-style APIs with call sites
    /// that mirror SwiftUI's static member syntax.
    ///
    /// - Returns: A `Backport<Color>` namespace used to access material-style
    ///   compatibility entries, for example `.backport.regularMaterial`.
    @MainActor @preconcurrency
    static var backport: Backport<Self> {
        Backport(.clear)
    }
}
