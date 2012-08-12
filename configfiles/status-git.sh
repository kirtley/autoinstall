#!/bin/bash

for i in *
do
if [ -d $i ]
then
echo $i
cd $i
git status
cd ..
fi
done
