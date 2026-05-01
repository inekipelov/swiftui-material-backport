import SwiftUI
import Backport
#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

public extension Backport where Content == Color {
    /// A backport namespace entry for SwiftUI's `ultraThinMaterial` shape style.
    @MainActor
    var ultraThinMaterial: some ShapeStyle {
        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, visionOS 1.0, *) {
            return .ultraThinMaterial
        } else {
            #if canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(0.08)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(0.08)
            #else
            return Color.gray.opacity(0.08)
            #endif
        }
    }

    /// A backport namespace entry for SwiftUI's `thinMaterial` shape style.
    @MainActor
    var thinMaterial: some ShapeStyle {
        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, visionOS 1.0, *) {
            return .thinMaterial
        } else {
            #if canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(0.14)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(0.14)
            #else
            return Color.gray.opacity(0.14)
            #endif
        }
    }

    /// A backport namespace entry for SwiftUI's `regularMaterial` shape style.
    @MainActor
    var regularMaterial: some ShapeStyle {
        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, visionOS 1.0, *) {
            return .regularMaterial
        } else {
            #if canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(0.20)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(0.20)
            #else
            return Color.gray.opacity(0.20)
            #endif
        }
    }

    /// A backport namespace entry for SwiftUI's `thickMaterial` shape style.
    @MainActor
    var thickMaterial: some ShapeStyle {
        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, visionOS 1.0, *) {
            return .thickMaterial
        } else {
            #if canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(0.28)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(0.28)
            #else
            return Color.gray.opacity(0.28)
            #endif
        }
    }

    /// A backport namespace entry for SwiftUI's `ultraThickMaterial` shape style.
    @MainActor
    var ultraThickMaterial: some ShapeStyle {
        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, visionOS 1.0, *) {
            return .ultraThickMaterial
        } else {
            #if canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(0.36)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(0.36)
            #else
            return Color.gray.opacity(0.36)
            #endif
        }
    }

    /// A backport namespace entry for SwiftUI's `bar` material shape style.
    @MainActor
    var bar: some ShapeStyle {
        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, visionOS 1.0, *) {
            return .bar
        } else {
            #if canImport(UIKit)
            return Color(UIColor.systemBackground).opacity(0.24)
            #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor).opacity(0.24)
            #else
            return Color.gray.opacity(0.24)
            #endif
        }
    }
}
