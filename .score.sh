#!/bin/bash
user_score=0


if [ -d /projects/challenge/test ] 
then
cd /projects/challenge/test
[ `eval ls -a | grep ".git" | wc -l` -eq 1 ] && user_score=`expr $user_score + 1`
fi


if [ -d /projects/challenge/test/.git ] 
then
git checkout master > /dev/null 2>&1
[ `eval git log --pretty="oneline" | wc -l` -ge 1 ] && user_score=`expr $user_score + 1`
[ `eval git remote -v | grep -e "origin" -e "/projects/challenge/.assessment/remote/" | wc -l` -eq 2 ] && user_score=`expr $user_score + 1`
fi


percent_score=$(( user_score * 100 / 3 ))
echo "Points scored: $user_score/3"
echo "FS_SCORE:$percent_score%" 