# Standalone Miner with Geth Client for Ethereum
This contains some shell scripts to download then run a standalone miner

## Version of Geth
The version is currently hardcoded in `downloadGeth.sh` shell script.

# TL;DR
```
git clone git@github.com:ethereumex/standalone-miner.git
./downloadGeth.sh && ./initGeth.sh && ./runMiner.sh
```

## Steps to mine
0. First, go to a working directory as all files, including chaindata will be within that directory or children of that path.
1. run `downloadGeth.sh`   -- this will download 1.6.5 for macOS and put `geth` in the working directory
2. run `initGeth.sh` -- this will generate a new Geth account, then update the `genesis.json` so that becomes the holder of lots and lots of Ether.
3. run `runMiner.sh` -- this starts mining, using the same address generated above. It will not use PnP to find any peers, but it will expose necessary RPC endpoint with all the modules ready. Of course IPC is always there too.
4. In another console/terminal you can run `attachGeth.sh` and this will connect to the miner instance using IPC. You must run this from the same working directory as prior steps.

## JSON-RPC endpoint
The RPC endpoint is by default open on port 8545 - test by issuing a command like

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_mining","params":[],"id":1}' http://localhost:8545
```

You should see the followingas a result if mining is working. Of course the console that you started `runMiner.sh` from, will have messages indicating the mining of blocks if all is OK.

```
// Result
{
  "id":1,
  "jsonrpc": "2.0",
  "result": true
}
```

## Cleanup
When you're done and want to reinitalize you can delete `./data` - or just re-run `initGeth.sh` as that will kill the data directory and regenerate a new account.


