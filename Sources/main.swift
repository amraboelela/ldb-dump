//
//  main.swift
//  ldb-dump
//
//  Created by Amr Aboelela on 12/8/16.
//  Copyright © 2016 Amr Aboelela. All rights reserved.
//  Use of this source code is governed by a BSD license that can be
//  found in the LICENSE file.
//

import Foundation

let args = CommandLine.arguments
var arg1 = ""
var arg2 = ""

if args.count > 1 { 
    arg1 = args[1]
}
if args.count > 2 { 
    arg2 = args[2]
}

if arg1 == "?" || arg1 == "" {
        print("Usage")
        print("ldb-dump <Database name> [<Key>|-a]")
        print("Database name: It can also be the path to the db if not in current path")
        print("Key: The key you want to see its value in the db")
        print("-a: This switch will print all values for all keys in the db")
        print("If key and -a is not provided then will display a list of all available keys in the database")
        print("")
        print("Examples:")
        print("ldb-dump Database")
        print("ldb-dump Database NS-12345")
        print("ldb-dump Database -a")
} else {
    _ = LDBDump(dbName: arg1, key: arg2)
}
