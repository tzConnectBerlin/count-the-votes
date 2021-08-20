import json

# get addr that are cxonnected to tzprofiles as a list
with open('tzprofiles.20210818.json') as fh:
    tzprofiles = json.load(fh)

# get addr that are cxonnected to tzprofiles as a list
with open('hdao_members.json') as fh:
    hdao_members = json.load(fh)

# get addr that are cxonnected to tzprofiles as a list
with open('badge_participants.json') as fh:
    badge_participants = json.load(fh)

# print(f"len of tzp = {len(tzprofiles)}, len of hado = {len(hdao_members)}, len of badge members = {len(badge_participants)}")


dic_vote_weight = dict()

for addr in tzprofiles:
    dic_vote_weight[addr] = 1
    if addr in hdao_members:
        dic_vote_weight[addr] += 1
    if addr in badge_participants:
        dic_vote_weight[addr] += 1

# print(f"len of final dic = {len(dic_vote_weight.keys())}")
# print(dic_vote_weight)

# get a list of votes where each item in the list is a dictionary with address and vote option
with open('votes.json') as fh:
    votes = json.load(fh)

# count votes
dic_votes = dict()
for vote_dic in votes:
    addr = vote_dic['address']
    vote_option = vote_dic['value']
    weight = dic_vote_weight[addr]
    if vote_option in dic_votes.keys():
        dic_votes[vote_option] += weight
    else:
        dic_votes[vote_option] = weight

print(dic_votes)
