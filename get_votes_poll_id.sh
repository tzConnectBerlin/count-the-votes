#!/bin/sh

curl  -v https://api.tzkt.io/v1/contracts/KT1Skxv2g3dnWf3mmciSeNvhthHqZJgG8Y6h/bigmaps/votes/keys?limit=10000|jq 'map(select(.key.string == "QmPAeHavuAE3MBQxjd59eHBM5wXSf9iLSRTFN4hPMdrscm")) | map({"address": .key.address, "value": .value})'
