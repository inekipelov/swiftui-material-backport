# MaterialBackport

`MaterialBackport` is a tiny Swift Package that backports SwiftUI material
shape styles through the reusable `Backport` wrapper.

It builds on [`swift-backport-pattern`](https://github.com/inekipelov/swift-backport-pattern)
and provides compatibility fallbacks for SwiftUI `Material` styles.

<p align="center">
  <a href="https://swift.org"><img src="https://img.shields.io/badge/Swift-5.9+-F05138?logo=swift&logoColor=white" alt="Swift 5.9+"></a>
  <a href="https://developer.apple.com/ios/"><img src="https://img.shields.io/badge/iOS-13.0+-CAFC63?logo=apple" alt="iOS 13.0+"></a>
  <a href="https://developer.apple.com/macos/"><img src="https://img.shields.io/badge/macOS-10.15+-CAFC63?logo=apple" alt="macOS 10.15+"></a>
  <a href="https://developer.apple.com/tvos/"><img src="https://img.shields.io/badge/tvOS-13.0+-CAFC63?logo=apple" alt="tvOS 13.0+"></a>
  <a href="https://developer.apple.com/watchos/"><img src="https://img.shields.io/badge/watchOS-6.0+-CAFC63?logo=apple" alt="watchOS 6.0+"></a>
  <a href="https://developer.apple.com/visionos/"><img src="https://img.shields.io/badge/visionOS-1.0+-CAFC63?logo=apple" alt="visionOS 1.0+"></a>
</p>

## Usage

```swift
import SwiftUI
import MaterialBackport

RoundedRectangle(cornerRadius: 12)
    .fill(.backport.regular)
```

The SwiftUI material helpers are backported:

| Backport style | Behavior |
| --- | --- |
| `.backport.ultraThin` | Uses native `Material.ultraThin` on iOS 15, macOS 12, tvOS 15, watchOS 10, and visionOS 1. Falls back to platform background color with `0.08` opacity elsewhere. |
| `.backport.thin` | Uses native `Material.thin` on iOS 15, macOS 12, tvOS 15, watchOS 10, and visionOS 1. Falls back to platform background color with `0.14` opacity elsewhere. |
| `.backport.regular` | Uses native `Material.regular` on iOS 15, macOS 12, tvOS 15, watchOS 10, and visionOS 1. Falls back to platform background color with `0.20` opacity elsewhere. |
| `.backport.thick` | Uses native `Material.thick` on iOS 15, macOS 12, tvOS 15, watchOS 10, and visionOS 1. Falls back to platform background color with `0.28` opacity elsewhere. |
| `.backport.ultraThick` | Uses native `Material.ultraThick` on iOS 15, macOS 12, tvOS 15, watchOS 10, and visionOS 1. Falls back to platform background color with `0.36` opacity elsewhere. |
| `.backport.bar` | Uses native `Material.bar` on iOS 15, macOS 12, and visionOS 1. Falls back to `.backport.regular` on tvOS and watchOS, and to platform background color with `0.24` opacity on older supported iOS and macOS versions. |

The SwiftUI `ShapeStyle` spellings are also available:

```swift
RoundedRectangle(cornerRadius: 12)
    .fill(.backport.regularMaterial)
```

| ShapeStyle spelling | Backport alias |
| --- | --- |
| `.backport.ultraThinMaterial` | `.backport.ultraThin` |
| `.backport.thinMaterial` | `.backport.thin` |
| `.backport.regularMaterial` | `.backport.regular` |
| `.backport.thickMaterial` | `.backport.thick` |
| `.backport.ultraThickMaterial` | `.backport.ultraThick` |

## Installation

Add the package to your `Package.swift` dependencies:

```swift
.package(url: "https://github.com/inekipelov/swiftui-material-backport.git", from: "0.1.0")
```

Then add `MaterialBackport` to your target dependencies:

```swift
.product(name: "MaterialBackport", package: "swiftui-material-backport")
```

`MaterialBackport` depends on
[`swift-backport-pattern`](https://github.com/inekipelov/swift-backport-pattern)
for the `Backport` wrapper. The package re-exports `Backport`, so importing
`MaterialBackport` is enough.
