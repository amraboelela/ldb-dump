# ldb-dump
Swift leveldb tool to browse a leveldb database in Mac OS or Linux

## Mac OS

You can use xCode to run it in the simulator.

## Linux
### Install

    $ ./install

### Usage:

    ldb-dump <Database name> [<Prefix>] [-v]
    Database name: It can also be the path to the db if not in current path    
    Prefix: The prefix of keys you want to see in the db    
    -v: This switch means printing values along with keys in the db    
    If key and -a is not provided then will display a list of all available keys in the database    
        
    Examples:    
    ldb-dump Database
    ldb-dump Database NS-123 -v
    ldb-dump Database NS-123   
    ldb-dump Database NS-123 -v
