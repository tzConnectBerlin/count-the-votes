#!/bin/bash

set -v 
set -e

if [ $# -ne 1 ];
    then echo "please call with poll_id"
fi

POLL_ID=$1

END_DATE=`curl -s https://api.tzkt.io/v1/contracts/KT1Skxv2g3dnWf3mmciSeNvhthHqZJgG8Y6h/bigmaps/polls/keys | jq "map(select(.key==\"$POLL_ID\"))[0].value.metadata.end_date" | sed -e 's/^"//' -e 's/"$//'`
# echo $END_DATE

LEVEL=`curl -s https://api.tzkt.io/v1/blocks?sort.desc=level\\&limit=1\\&timestamp.lt=$END_DATE | jq "map(.level)[0]"`
# echo $LEVEL

echo "Calculating result for poll $POLL_ID"
echo "level is $LEVEL. Getting badge participants"

./get_badge_participants.sh $LEVEL > badge_participants.json

echo "Getting HDAO holders"

./get_hdao_members.sh $LEVEL > hdao_members.json

echo "Using cached tzprofile holders, functionality coming Real Soon Now"

echo "Getting votes"

./get_votes_poll_id.sh $POLL_ID > votes.json

echo "Counting votes"

./count_votes.py
