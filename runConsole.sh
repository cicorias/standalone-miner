#!/usr/bin/env bash
set -x

./geth --datadir ./data --networkid 123 --nodiscover --maxpeers 0 console

