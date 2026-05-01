import SwiftUI
import Backport

public extension ShapeStyle where Self == Color {
    /// A namespace for `ShapeStyle` backports.
    ///
    /// Use this property to access backported shape-style APIs with call sites
    /// that mirror SwiftUI's static member syntax.
    @MainActor @preconcurrency
    static var backport: Backport<Self> {
        Backport(.clear)
    }
}
