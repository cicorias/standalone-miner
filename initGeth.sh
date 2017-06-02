#!/usr/bin/env bash
set -x

rm -rf passphrase.txt ./data

echo "" > passphrase.txt

ADDRESS=$(./geth --datadir ./data account new --password passphrase.txt | cut -f 2 -d ' '| cut -c 2-41)

echo $ADDRESS > address.txt

sed  "s/address1/${ADDRESS}/" genesis.template.json > genesis.json

./geth --datadir ./data init ./genesis.json

