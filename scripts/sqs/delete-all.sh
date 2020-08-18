#!/bin/sh


printf 'Checking account...\n'
status=$(cd ../identity; echo $(./check-identity.sh 160306773861))
if [ ! "$status" -eq 0 ]
then
  printf 'Wrong account, exiting.\n'
  exit 1
fi
printf 'Done.\n'

printf 'Deleting SQS queue...\n'
(cd sqs; ./sqs-delete-queue.sh)
printf 'Done.\n'
