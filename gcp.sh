# /usr/bin/env bash
p=$1 

if [ -z "$1" ] 
then 
    p="default commit" 
fi   

echo "start commit and push, commit message is: $p"
GIT_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
echo "current branch is: ${GIT_BRANCH}"

git status 
git add . 
git commit -m "$p" 
git pull 
git push origin ${p} 
