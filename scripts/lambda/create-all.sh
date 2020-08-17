#!/bin/sh

(cd policy; ./iam-create-policy.sh)
(cd role; ./iam-create-role.sh)
(cd lambda; ./lambda-create-function.sh)
(cd esm; ./lambda-create-event-source-mapping.sh)