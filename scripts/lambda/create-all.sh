#!/bin/sh

printf 'Checking account...\n'
status=$(cd ../identity; echo $(./check-identity.sh 854045450972))
if [ ! "$status" -eq 0 ]
then
  printf 'Wrong account, exiting.\n'
  exit 1
fi
printf 'Done.\n'

printf 'Creating IAM policy...\n'
(cd policy; ./iam-create-policy.sh)
printf 'Done.\n'

printf 'Creating IAM role...\n'
(cd role; ./iam-create-role.sh)
printf 'Done.\n'

printf 'Creating lambda function...\n'
(cd lambda; ./lambda-create-function.sh)
sleep 10
printf 'Done.\n'

printf 'Creating event source mapping...\n'
(cd esm; ./lambda-create-event-source-mapping.sh)
printf 'Done.\n'
