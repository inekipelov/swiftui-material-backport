import SwiftUI
import Backport
#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

public extension Backport where Content == Color {
    /// A backport namespace entry for SwiftUI's `ultraThin` material.
    ///
    /// Uses native `Material.ultraThin` on supported OS versions. On legacy
    /// OS versions, falls back to platform background color with `0.08` opacity.
    ///
    /// - Returns: A shape style approximating SwiftUI ultra-thin material.
    @MainActor
    var ultraThin: some ShapeStyle {
        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 10.0, visionOS 1.0, *) {
            return Material.ultraThin
        } else {
            let opacity = 0.08
            #if os(tvOS) || os(watchOS)
            return Color.gray.opacity(opacity)
            #elseif canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(opacity)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(opacity)
            #else
            return Color.gray.opacity(opacity)
            #endif
        }
    }

    /// A backport namespace entry for SwiftUI's `ultraThinMaterial` shape style.
    ///
    /// Mirrors SwiftUI's `ShapeStyle.ultraThinMaterial` spelling and delegates
    /// to ``ultraThin``.
    ///
    /// - Returns: A shape style approximating SwiftUI ultra-thin material.
    @MainActor
    var ultraThinMaterial: some ShapeStyle {
        ultraThin
    }

    /// A backport namespace entry for SwiftUI's `thin` material.
    ///
    /// Uses native `Material.thin` on supported OS versions. On legacy
    /// OS versions, falls back to platform background color with `0.14` opacity.
    ///
    /// - Returns: A shape style approximating SwiftUI thin material.
    @MainActor
    var thin: some ShapeStyle {
        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 10.0, visionOS 1.0, *) {
            return Material.thin
        } else {
            let opacity = 0.14
            #if os(tvOS) || os(watchOS)
            return Color.gray.opacity(opacity)
            #elseif canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(opacity)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(opacity)
            #else
            return Color.gray.opacity(opacity)
            #endif
        }
    }

    /// A backport namespace entry for SwiftUI's `thinMaterial` shape style.
    ///
    /// Mirrors SwiftUI's `ShapeStyle.thinMaterial` spelling and delegates to
    /// ``thin``.
    ///
    /// - Returns: A shape style approximating SwiftUI thin material.
    @MainActor
    var thinMaterial: some ShapeStyle {
        thin
    }

    /// A backport namespace entry for SwiftUI's `regular` material.
    ///
    /// Uses native `Material.regular` on supported OS versions. On legacy
    /// OS versions, falls back to platform background color with `0.20` opacity.
    ///
    /// - Returns: A shape style approximating SwiftUI regular material.
    @MainActor
    var regular: some ShapeStyle {
        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 10.0, visionOS 1.0, *) {
            return Material.regular
        } else {
            let opacity = 0.20
            #if os(tvOS) || os(watchOS)
            return Color.gray.opacity(opacity)
            #elseif canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(opacity)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(opacity)
            #else
            return Color.gray.opacity(opacity)
            #endif
        }
    }

    /// A backport namespace entry for SwiftUI's `regularMaterial` shape style.
    ///
    /// Mirrors SwiftUI's `ShapeStyle.regularMaterial` spelling and delegates to
    /// ``regular``.
    ///
    /// - Returns: A shape style approximating SwiftUI regular material.
    @MainActor
    var regularMaterial: some ShapeStyle {
        regular
    }

    /// A backport namespace entry for SwiftUI's `thick` material.
    ///
    /// Uses native `Material.thick` on supported OS versions. On legacy
    /// OS versions, falls back to platform background color with `0.28` opacity.
    ///
    /// - Returns: A shape style approximating SwiftUI thick material.
    @MainActor
    var thick: some ShapeStyle {
        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 10.0, visionOS 1.0, *) {
            return Material.thick
        } else {
            let opacity = 0.28
            #if os(tvOS) || os(watchOS)
            return Color.gray.opacity(opacity)
            #elseif canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(opacity)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(opacity)
            #else
            return Color.gray.opacity(opacity)
            #endif
        }
    }

    /// A backport namespace entry for SwiftUI's `thickMaterial` shape style.
    ///
    /// Mirrors SwiftUI's `ShapeStyle.thickMaterial` spelling and delegates to
    /// ``thick``.
    ///
    /// - Returns: A shape style approximating SwiftUI thick material.
    @MainActor
    var thickMaterial: some ShapeStyle {
        thick
    }

    /// A backport namespace entry for SwiftUI's `ultraThick` material.
    ///
    /// Uses native `Material.ultraThick` on supported OS versions. On legacy
    /// OS versions, falls back to platform background color with `0.36` opacity.
    ///
    /// - Returns: A shape style approximating SwiftUI ultra-thick material.
    @MainActor
    var ultraThick: some ShapeStyle {
        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 10.0, visionOS 1.0, *) {
            return Material.ultraThick
        } else {
            let opacity = 0.36
            #if os(tvOS) || os(watchOS)
            return Color.gray.opacity(opacity)
            #elseif canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(opacity)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(opacity)
            #else
            return Color.gray.opacity(opacity)
            #endif
        }
    }

    /// A backport namespace entry for SwiftUI's `ultraThickMaterial` shape style.
    ///
    /// Mirrors SwiftUI's `ShapeStyle.ultraThickMaterial` spelling and delegates
    /// to ``ultraThick``.
    ///
    /// - Returns: A shape style approximating SwiftUI ultra-thick material.
    @MainActor
    var ultraThickMaterial: some ShapeStyle {
        ultraThick
    }

    /// A backport namespace entry for SwiftUI's `bar` material shape style.
    ///
    /// Uses native `Material.bar` on supported OS versions. On tvOS and watchOS,
    /// where `Material.bar` is unavailable, falls back to ``regular``. On legacy
    /// supported platforms, falls back to platform background color with `0.24`
    /// opacity.
    ///
    /// - Returns: A shape style approximating SwiftUI bar material.
    @MainActor
    var bar: some ShapeStyle {
        #if os(tvOS) || os(watchOS)
        return regular
        #else
        if #available(iOS 15.0, macOS 12.0, visionOS 1.0, *) {
            return Material.bar
        } else {
            let opacity = 0.24
            #if canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(opacity)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(opacity)
            #else
            return Color.gray.opacity(opacity)
            #endif
        }
        #endif
    }
}
