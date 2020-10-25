import XCTest

import ldb_dumpTests

var tests = [XCTestCaseEntry]()
tests += ldb_dumpTests.allTests()
XCTMain(tests)
