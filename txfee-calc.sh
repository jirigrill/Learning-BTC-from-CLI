#!/bin/bash

if [ -z $1 ];
then
    echo "You must include the raw transaction hex as an argument.";
    exit;
fi

usedtxid=($(btc decoderawtransaction $1 | jq -r '.vin | .[] | .txid'))
usedvout=($(btc decoderawtransaction $1 | jq -r '.vin | .[] | .vout'))
btcin=$(for ((i=0; i<${#usedtxid[*]}; i++)); do txid=${usedtxid[i]}; vout=${usedvout[i]}; btc listunspent | jq -r '.[] | select (.txid | contains("'${txid}'")) | select(.vout | contains('$vout')) | .amount'; done | awk '{s+=$1} END {print s}')
btcout=$(btc decoderawtransaction $1 | jq -r '.vout  [] | .value' | awk '{s+=$1} END {print s}')
btcout_f=$(awk -v btcout="$btcout" 'BEGIN { printf("%f\n", btcout) }' </dev/null)
echo "$btcin-$btcout_f"| /usr/bin/bc