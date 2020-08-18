#!/bin/sh


printf 'Checking account...\n'
status=$(cd ../identity; echo $(./check-identity.sh 160306773861))
if [ ! "$status" -eq 0 ]
then
  printf 'Wrong account, exiting.\n'
  exit 1
fi
printf 'Done.\n'

printf 'Creating SQS queue...\n'
./sqs-create-queue.sh
printf 'Done.\n'

printf 'Adding cross-account permission...\n'
./sqs-add-permission.sh
printf 'Done.\n'
