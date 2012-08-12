#!/bin/bash

for i in *
do
if [ -d $i ]
then
echo $i
cd $i
git fetch
git pull
cd ..
fi
done
