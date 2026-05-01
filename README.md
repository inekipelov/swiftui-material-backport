# swiftui-material-backport

Backport package for SwiftUI `Material` built on top of [`swift-backport-pattern`](https://github.com/inekipelov/swift-backport-pattern).

## Strategy

Implements **solution 1 (`Dummy Fallback`)** from the backport adoption guide.

- iOS 15+/macOS 12+/tvOS 15+/watchOS 8+/visionOS 1+: applies native material background.
- Older OS versions: falls back to a platform background color (`systemBackground` / `windowBackgroundColor`) with material-dependent opacity.

## Installation

```swift
.package(url: "https://github.com/inekipelov/swiftui-material-backport.git", from: "0.1.0")
```

## Usage

```swift
import SwiftUI
import MaterialBackport

Text("Hello")
    .padding()
    .backport.materialBackground(.regular)
```

Available APIs:

- `materialBackground(_:ignoresSafeAreaEdges:)`
- `ultraThinMaterialBackground(ignoresSafeAreaEdges:)`
- `thinMaterialBackground(ignoresSafeAreaEdges:)`
- `regularMaterialBackground(ignoresSafeAreaEdges:)`
- `thickMaterialBackground(ignoresSafeAreaEdges:)`
- `ultraThickMaterialBackground(ignoresSafeAreaEdges:)`
- `barMaterialBackground(ignoresSafeAreaEdges:)`

Fallback semantics for `.backport.regularMaterial`:

- iOS 15+/macOS 12+/tvOS 15+/watchOS 8+/visionOS 1+: native `.regularMaterial`
- Older OS versions: platform background color with `0.20` opacity
