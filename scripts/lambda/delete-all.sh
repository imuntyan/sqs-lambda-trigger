#!/bin/sh

(cd role; ./iam-delete-role.sh)
(cd lambda; ./lambda-delete-function.sh)