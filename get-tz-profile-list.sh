#!/bin/sh

curl -s 'https://indexer.tzprofiles.com/v1/graphql' -H 'content-type: application/json' -H 'x-hasura-admin-secret: WJWv4w28yu954DYbN3dFXd0gXsQMX37L' --data-raw '{"query":"query MyQuery {\n  tzprofiles_aggregate(distinct_on: account) {\n    nodes {\n      account\n    }\n  }\n}\n","variables":null,"operationName":"MyQuery"}' |jq ' .data.tzprofiles_aggregate.nodes | map(.account)'
