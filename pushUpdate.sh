#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "./pushUpdate.sh v0.5.4"
else
  git pull

  echo " " >> generated.txt

  git add .
  git commit -am $1
  git tag $1
fi
