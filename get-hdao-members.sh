#!/bin/sh

curl  -v https://api.tzkt.io/v1/contracts/KT1AFA2mwNUMNd4SsujE1YYp29vd8BZejyKW/bigmaps/ledger/keys?limit=10000|jq 'map (.key.address)'
