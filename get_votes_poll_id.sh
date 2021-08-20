#!/bin/sh

set -e

if [ $# -ne 1 ];
    then echo "please call with poll_id"
fi

POLL_ID=$1

curl  -s https://api.tzkt.io/v1/contracts/KT1Skxv2g3dnWf3mmciSeNvhthHqZJgG8Y6h/bigmaps/votes/keys?limit=10000| jq "map(select(.key.string == \"$POLL_ID\")) | map({"address": .key.address, "value": .value})"
