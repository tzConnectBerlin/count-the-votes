#!/bin/sh

set -e

if [ $# -ne 1 ];
    then echo "please call with the level you want data from"
fi

LEVEL=$1

curl -s https://api.tzkt.io/v1/contracts/KT1CozhoKRtWSoEvyk7mXrPNFxawMcmXvZtM/bigmaps/ledger/historical_keys/$LEVEL?limit=10000|jq 'map (.key)'
