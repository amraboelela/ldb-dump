//
//  Database.swift
//  ldbdump
//
//  Created by Amr Aboelela on 12/8/16.
//
//  Copyright © 2016 Amr Aboelela. All rights reserved.
//  Use of this source code is governed by a BSD license that can be
//  found in the LICENSE file.
//

//import Foundation
import SwiftLevelDB

public var database: LevelDB!

/*
public class Database: LevelDB {
    var name = ""

    // MARK: - Life cycle

    public convenience init() {
        self.init(name: "Database")
    }
    
    public init(name: String) {
        self.name = name
        
        // TODO: Find a better way than hardcoding the path
        #if os(Linux)
            let dbPath = name
        #else
            let dbPath = "/Users/aaboelela/" + name
        #endif
        super.init(path: dbPath, name: name)
        
        self.dictionaryEncoder = {(key: String, value: [String : Any]) -> Data? in
            do {
                let data = try JSONSerialization.data(withJSONObject: value)
                return data
            } catch {
                NSLog("Problem encoding data: \(error)")
                return nil
            }
        }
        self.dictionaryDecoder = {(key: String, data: Data) -> [String : Any]? in
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
    }
    
    required public init(path: String, name: String) {
        super.init(path: path, name: name)
    }
    
    // MARK: - Class methods
    
    // MARK: - Overridden methods
    
    override public func close() {
        super.close()
    }
}*/
