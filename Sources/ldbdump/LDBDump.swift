//
//  LDBDump.swift
//  ldbdump
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
    
    public init(dbName: String, prefix: String, printValues: Bool) {
        let db = Database(name: dbName)
        switch prefix {
        case "":
            if printValues {
                db.enumerateKeysAndDictionaries() { key, value, stop in
                    print(key)
                    print(value)
                }
            } else {
                db.enumerateKeys() { key, stop in
                    print(key)
                }
            }
        default:
            if printValues {
                db.enumerateKeysAndDictionaries(backward: false, startingAtKey: nil, andPrefix: prefix) { key, value, stop in
                    print(key)
                    print(value)
                }
            } else {
                db.enumerateKeys(backward: false, startingAtKey: nil, andPrefix: prefix) { key, stop in
                    print(key)
                }
            }
        }
        db.close()
    }
}
