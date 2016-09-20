#!/bin/sh

#HOW TO USE:
#initGit.sh [name] [url] [commit_msg]

echo "----Making directory to store introduced data..."
mkdir Gitinfo
echo "----Saving the name of the repository (used locally)..."
echo $1 >> ./Gitinfo/Repo_name.txt
echo "----Saving the GitHub URL of the repository..."
echo $2 >> ./Gitinfo/Repo_url.txt

echo "---Starting initialization..."
git init
echo "---Remotely adding the repo with the name $1..."
git remote add $1 $2
echo "---Pulling from repository (Just in case)..."
git pull $1 master
echo "---Adding to the repository..."
git add .
# Supposing gitignore was set
echo "---Commiting with message $3..."
git commit -m $3
echo "---Pushing..."
git push -u $1 master
echo "Git initialization is a succes!Bye!"

