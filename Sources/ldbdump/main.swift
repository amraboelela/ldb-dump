//
//  main.swift
//  ldbdump
//
//  Created by Amr Aboelela on 12/8/16.
//  Copyright © 2016 Amr Aboelela. All rights reserved.
//  Use of this source code is governed by a BSD license that can be
//  found in the LICENSE file.
//

import Foundation

main()

func main() {
    Task {
        let args = CommandLine.arguments
        var arg1 = ""
        var arg2 = ""
        var arg3 = ""
        if args.count > 1 {
            arg1 = args[1]
        }
        if args.count > 2 {
            arg2 = args[2]
        }
        if args.count > 3 {
            arg3 = args[3]
        }
        if arg1 == "?" || arg1 == "" {
            print("Usage")
            print("ldbdump [-v] <Database name> [<Prefix>]")
            print("-v: Print values along with keys. If empty then will print keys only")
            print("Database name: It can also be the path to the db if not in current path")
            print("Prefix: The prefix of keys you want to see in the db. If empty, then will print all keys")
            print("")
            print("Examples:")
            print("ldbdump Database")
            print("ldbdump -v Database")
            print("ldbdump Database NS-123")
            print("ldbdump -v Database NS-123")
        } else {
            print("ldbdump arg1: \(arg1)")
            var printValues = false
            var dbName = ""
            var prefix = ""
            if arg1 == "-v" {
                printValues = true
                dbName = arg2
                prefix = arg3
            } else {
                dbName = arg1
                prefix = arg2
            }
            _ = await LDBDump(dbName: dbName, prefix: prefix, printValues: printValues)
        }
    }
    Thread.sleep(forTimeInterval: 3)
}
