#!/bin/sh

#HOW TO USE:
#updateGit.sh [commit_msg]

repo_name=$(<./cfg_git/Repo_name.txt)
# Read the name cfg for git for repository
# from file
echo "$repo_name"

echo "----Adding files..."
git add .
echo "----Making the commit $1..."
git commit -m $1
echo "----Pushing..."
git push -u $repo_name master
# cum rezolv faza cu credentialele...?
echo "----Git Hub updated succesfully!"