#!/bin/sh

set -e

if [ $# -ne 1 ];
    then echo "please call with the level you want data from"
fi

LEVEL=$1

curl -s https://api.tzkt.io/v1/contracts/KT1AFA2mwNUMNd4SsujE1YYp29vd8BZejyKW/bigmaps/ledger/historical_keys/$LEVEL?limit=10000|jq 'map (.key.address)'
