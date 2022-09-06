//
//  LevelDBTests.swift
//  SwiftLevelDBAppTests
//
//  Created by Amr Aboelela on 1/13/22.
//

import XCTest
import Foundation
import Dispatch
import SwiftLevelDB

class LDBDumpTests: BaseTestClass {
    
    override func asyncSetup() async {
        await super.asyncSetup()
    }
    
    override func asyncTearDown() async {
        await super.asyncTearDown()
    }
    
    @available(macOS 12, *)
    func testInit() async {
        await asyncSetup()
        XCTAssertNotNil(db, "Database should not be nil")
        guard let db = db else {
            print("\(Date.now) Database reference is not existent, failed to open / create database")
            return
        }
        let dbPath = LevelDB.getLibraryPath()
        XCTAssertNotEqual(dbPath, "")
        await asyncTearDown()
    }
}
