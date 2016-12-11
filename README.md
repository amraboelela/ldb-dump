# ldb-dump
Swift leveldb tool to browse a leveldb database in Mac OS or Linux

## Mac OS

You can use xCode to run it in the simulator.

## Linux
### Install

    $ ./install

### Usage:

    ldb-dump [-v] <Database name> [<Prefix>]
    -v: This switch means printing values along with keys    
    Database name: It can also be the path to the db if not in current path    
    Prefix: The prefix of keys you want to see in the db    

* Examples:

    ldb-dump Database
    ldb-dump -v Database
    ldb-dump Database NS-123
    ldb-dump -v Database NS-123
