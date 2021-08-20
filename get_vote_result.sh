#!/bin/bash

POLL_ID=$1

if [ $# -ne 1 ]; 
    then echo "please call with poll_id"
fi

echo $POLL_ID
