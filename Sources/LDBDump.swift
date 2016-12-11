//
//  LDBDump.swift
//  ldb-dump
//
//  Created by Amr Aboelela on 12/8/16.
//
//  Copyright © 2016 Amr Aboelela. All rights reserved.
//  Use of this source code is governed by a BSD license that can be
//  found in the LICENSE file.
//

import Foundation
import SwiftLevelDB

public class LDBDump {

    // MARK: - Life cycle
    
    public init(dbName: String, key: String) {
        let db = Database(name: dbName)
        switch key {
        case "":
            db.enumerateKeysUsingBlock({key, stop in
                print(key)
            })
        case "-a":
            db.enumerateKeysAndValuesUsingBlock({key, value, stop in
                print(key)
                print(value)
            })
        default:
            if let value = db[key] {
                print(value)
            }
        }
    }
}
