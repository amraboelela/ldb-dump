import XCTest
@testable import LDBDumpTests

class LDBDumpTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //XCTAssertEqual(ldb-dump().text, "Hello, World!")
    }


    static var allTests : [(String, (LDBDumpTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
