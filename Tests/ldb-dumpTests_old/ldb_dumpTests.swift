import XCTest
@testable import ldb_dump

final class ldb_dumpTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ldb_dump().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
