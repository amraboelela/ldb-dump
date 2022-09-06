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
    
    public init(dbName: String, prefix: String, printValues: Bool) async {
        //let root = URL(fileURLWithPath: #file.replacingOccurrences(of: "Sources/ldbdump/LDBDump.swift", with: "/")).path
        //print("root: \(root)")
        let db = LevelDB(parentPath: ".", name: dbName)
        
        db.dictionaryEncoder = {(key: String, value: [String : Any]) -> Data? in
            do {
                let data = try JSONSerialization.data(withJSONObject: value)
                return data
            } catch {
                NSLog("Problem encoding data: \(error)")
                return nil
            }
        }
        db.dictionaryDecoder = {(key: String, data: Data) -> [String : Any]? in
            do {
                if let result = try JSONSerialization.jsonObject(with: data) as? [String : Any] {
                    return result
                } else {
                    return nil
                }
            } catch {
                NSLog("Problem decoding data: \(error)")
                return nil
            }
        }
        
        switch prefix {
        case "":
            if printValues {
                await db.enumerateKeysAndDictionaries() { key, value, stop in
                    print(key)
                    print(value)
                }
            } else {
                await db.enumerateKeys() { key, stop in
                    print(key)
                }
            }
        default:
            if printValues {
                await db.enumerateKeysAndDictionaries(backward: false, startingAtKey: nil, andPrefix: prefix) { key, value, stop in
                    print(key)
                    print(value)
                }
            } else {
                await db.enumerateKeys(backward: false, startingAtKey: nil, andPrefix: prefix) { key, stop in
                    print(key)
                }
            }
        }
        await db.close()
    }
}
