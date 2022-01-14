# my notes
### .zshrc setup
alias btcdir="cd /Users/jiri/Library/Application\ Support/Bitcoin/testnet3" #linux default bitcoind path
alias btc="bitcoin-cli -testnet"
alias btcnd="bitcoind"

## btc wallet:
 - legacy address on testnet: `mwthLvi9m1bVYuBabN6P5ufcjCjngY9Mjp`
 - private key: `cRwpATNz6SvgTg978o5o3iPipXHwiNiHg4E4uEwEWM2zXY6VVSfD`

## useful commands:
- `btc getblockchaininfo` returns complex status update about bitcoin node
- `btc -getinfo`  returns version, nbr of blocks, sync status
- `btcnd -daemon` to run bitcoin node in the background
- `btc getnetworkinfo` returns status about btc network
- `btc getblockhash <number of block>` returns block hash to given block number
- `btc getblock "<block hash>"` returns content of the block - tx, metadata


