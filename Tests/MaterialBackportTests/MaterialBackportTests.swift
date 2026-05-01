import XCTest
import SwiftUI
import MaterialBackport

final class MaterialBackportTests: XCTestCase {
    @MainActor
    func testShapeStyleBackportNamespaceCompiles() {
        let wrapper = Color.backport
        XCTAssertTrue(type(of: wrapper.content) == Color.self)
    }

    @MainActor
    func testRegularMaterialBackportCompiles() {
        _ = Color.backport.ultraThin
        _ = Color.backport.thin
        _ = Color.backport.regular
        _ = Color.backport.thick
        _ = Color.backport.ultraThick
        _ = Color.backport.ultraThinMaterial
        _ = Color.backport.thinMaterial
        _ = Color.backport.regularMaterial
        _ = Color.backport.thickMaterial
        _ = Color.backport.ultraThickMaterial
        _ = Color.backport.bar

        if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, visionOS 1.0, *) {
            _ = Text("Hello").background(.backport.ultraThin)
            _ = Text("Hello").background(.backport.thin)
            _ = Text("Hello").background(.backport.regular)
            _ = Text("Hello").background(.backport.thick)
            _ = Text("Hello").background(.backport.ultraThick)
            _ = Text("Hello").background(.backport.ultraThinMaterial)
            _ = Text("Hello").background(.backport.thinMaterial)
            _ = Text("Hello").background(.backport.regularMaterial)
            _ = Text("Hello").background(.backport.thickMaterial)
            _ = Text("Hello").background(.backport.ultraThickMaterial)
            _ = Text("Hello").background(.backport.bar)
        }
    }
}
