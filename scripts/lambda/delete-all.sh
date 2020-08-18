#!/bin/sh

printf 'Checking account...\n'
status=$(cd ../identity; echo $(./check-identity.sh 854045450972))
if [ ! "$status" -eq 0 ]
then
  printf 'Wrong account, exiting.\n'
  exit 1
fi
printf 'Done.\n'

printf 'Deleting event source mapping...'
(cd esm; ./lambda-delete-event-source-mapping.sh)
printf 'Done.\n'

printf 'Deleting lambda function...'
(cd lambda; ./lambda-delete-function.sh)
printf 'Done.\n'

printf 'Deleting lambda log group...'
(cd lambda; ./lambda-delete-log-group.sh)
printf 'Done.\n'

printf 'Deleting IAM role...'
(cd role; ./iam-delete-role.sh)
printf 'Done.\n'

printf 'Deleting IAM policy...'
(cd policy; ./iam-delete-policy.sh)
printf 'Done.\n'
