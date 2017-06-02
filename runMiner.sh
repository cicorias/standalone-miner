#!/usr/bin/env bash

set -x

ADDRESS=$(<address.txt)

./geth --datadir ./data --networkid 123 --nodiscover --maxpeers 0 --mine --minerthreads 1 --etherbase $ADDRESS --rpc --rpcapi "admin,debug,eth,miner,net,personal,rpc,txpool,web3"