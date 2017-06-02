#!/usr/bin/env bash
set -x

IPC=$(pwd)/data/geth.ipc

./geth attach ipc:$IPC

