import XCTest
@testable import ScaledFonts

final class ScaledFontsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ScaledFonts().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
