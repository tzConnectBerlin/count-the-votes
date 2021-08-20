# Vote counting tool

## Overview

This file gets the list of hDAO holders, of Hicathon badge holders, and has a set of tzprofiles as of 20210819. Using the script `get_vote_result.sh` you can see the weighted votes.

Example use:
```
./get_vote_result.sh QmWSPtNCxEEJTcPrjRo5vigoTEDKPP7xGkx99UkTe8UQid
Calculating result for poll QmWSPtNCxEEJTcPrjRo5vigoTEDKPP7xGkx99UkTe8UQid
level is 1611383. Getting badge participants
Getting HDAO holders
Using cached tzprofile holders, functionality coming Real Soon Now
Getting votes
Counting votes
{'1': 37, '2': 6}
```

You will need the poll ID in order to do this.
