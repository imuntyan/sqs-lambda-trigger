#!/bin/sh

(cd lambda; ./lambda-delete-function.sh)
(cd policy; ./iam-delete-policy.sh)
(cd role; ./iam-delete-role.sh)
