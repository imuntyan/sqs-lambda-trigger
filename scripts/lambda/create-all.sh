#!/bin/sh

(cd role; ./iam-create-role.sh)
(cd lambda; ./lambda-create-function.sh)