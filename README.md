# ldb-dump
Swift leveldb tool to browse a leveldb database in Mac OS or Linux

## Mac OS

You can use xCode to run it in the simulator.

## Linux
### Install

    $ ./install

### Usage

    ldb-dump [-v] <Database name> [<Prefix>]
    -v: Print values along with keys. If empty then will print keys only    
    Database name: It can also be the path to the db if not in current path    
    Prefix: The prefix of keys you want to see in the db. If empty, then will print all keys 

**Examples**

    ldb-dump Database
    ldb-dump -v Database
    ldb-dump Database NS-123
    ldb-dump -v Database NS-123
