#!/bin/sh

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
