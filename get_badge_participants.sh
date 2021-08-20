#!/bin/sh

curl  -v https://api.tzkt.io/v1/contracts/KT1CozhoKRtWSoEvyk7mXrPNFxawMcmXvZtM/bigmaps/ledger/historical_keys/1611383?limit=10000|jq 'map (.key)'

