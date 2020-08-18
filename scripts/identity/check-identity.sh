#!/bin/sh

acc=$(aws sts get-caller-identity | jq -r '.Account')
if [ "$acc" != "$1" ]
then
  echo 1
else
  echo 0
fi
