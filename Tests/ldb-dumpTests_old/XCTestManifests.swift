import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ldb_dumpTests.allTests),
    ]
}
#endif
