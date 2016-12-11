# ldb-dump
Swift leveldb tool to browse a leveldb database in Mac OS or Linux

## Mac OS

You can use xCode to run it in the simulator.

## Linux
### Install

    $ ./install

### Usage:

    ldb-dump <Database name> [<Key>|-a]
    Database name: It can also be the path to the db if not in current path    
    Key: The key you want to see its value in the db     
    -a: This switch will print all values for all keys in the db    
    If key and -a is not provided then will display a list of all available keys in the database    
        
    Examples:    
    ldb-dump Database    
    ldb-dump Database NS-12345    
    ldb-dump Database -a    
