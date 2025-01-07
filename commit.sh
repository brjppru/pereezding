#!/bin/bash

#
# git push pereezding repo to githublo
#
# 2024.04.25 fix script for a days
# 2024.06.22 fix .DS_Store
# 2025.01.07 fix the blob
#

dated=$(date +%Y-%m-%d-%H%M%S)
commt=$(curl -L -s http://whatthecommit.com/index.txt)

find . -name ".DS_Store" -delete

git add .

echo run git push on ${dated} ${commt}

for i in `git status | grep deleted | awk '{print $2}'`; do git rm $i; done

git commit -m "$dated $commt"

git push -u origin main

#
# non master, just a main. fck2020 (c) scooter
#
