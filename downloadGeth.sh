#!/usr/bin/env bash

curl -o geth.tar.gz https://gethstore.blob.core.windows.net/builds/geth-darwin-amd64-1.6.5-cf87713d.tar.gz

tar -xv --file=geth.tar.gz --strip-components=1
