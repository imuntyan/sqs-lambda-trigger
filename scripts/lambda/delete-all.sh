#!/bin/sh

echo 'Deleting event source mapping...'
(cd esm; ./lambda-delete-event-source-mapping.sh)
echo 'Done.'
echo 'Deleting lambda function...'
(cd lambda; ./lambda-delete-function.sh)
echo 'Done.'
echo 'Deleting lambda log group...'
(cd lambda; ./lambda-delete-log-group.sh)
echo 'Done.'
echo 'Deleting IAM policy...'
(cd policy; ./iam-delete-policy.sh)
echo 'Done.'
echo 'Deleting IAM role...'
(cd role; ./iam-delete-role.sh)
echo 'Done.'
