#!/bin/bash
mkdir test 
cd test
echo 'Staging Area' > staging.txt
cd ..

mkdir -p .assessment/remote
cd .assessment/remote
git init --bare > /dev/null 2>&1
cd ../..
