# my notes
### .zshrc setup
- `alias btcdir="cd /Users/jiri/Library/Application\ Support/Bitcoin/testnet3"` linux default bitcoind path
- `alias btc="bitcoin-cli -testnet"`
- `alias btcnd="bitcoind"`

## btc wallet:
 - private key: `cRwpATNz6SvgTg978o5o3iPipXHwiNiHg4E4uEwEWM2zXY6VVSfD`

## useful commands:
- `btc getblockchaininfo` returns complex status update about bitcoin node
- `btc -getinfo`  returns version, nbr of blocks, sync status
- `btcnd -daemon` starts bitcoin node in the background
- `btc getnetworkinfo` returns status about btc network
- `btc getblockhash <number of block>` returns block hash to given block number
- `btc getblock "<block hash>"` returns content of the block - tx, metadata
- `btc getbalance` returns BTC balance in wallet
- `btc getunconfirmedbalance` returns btc unconfirmed balance in wallet
- `btc getnewadress` returns new public address
- `btc dumpprivkey <public wallet address>` returns private key for given addres
- `btc sendtoaddress <public address> <amount>` sens the given amount to the given address; it returns id of tx
- `btc listunspent` lists out all Unspent Transaction Outputs (UTXO)
- `btc listtransactions` lists all txs

## websites to get tesnet BTCs
- https://testnet-faucet.mempool.co/ - get 0.001 per request/hour
- https://bitcoinfaucet.uo1.net/ 
- https://coinfaucet.eu/en/btc-testnet/



