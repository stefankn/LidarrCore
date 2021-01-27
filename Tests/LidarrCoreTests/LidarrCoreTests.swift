import XCTest
@testable import LidarrCore

final class LidarrCoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LidarrCore().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
