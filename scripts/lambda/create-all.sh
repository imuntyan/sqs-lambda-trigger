#!/bin/sh
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
