#!/bin/sh

(cd policy; ./iam-delete-policy.sh)
(cd lambda; ./lambda-delete-function.sh)
(cd role; ./iam-delete-role.sh)
