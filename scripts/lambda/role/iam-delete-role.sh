#!/bin/sh

aws iam detach-role-policy --role-name poc-crossaccount-sqs-role --policy-arn arn:aws:iam::854045450972:policy/poc-crossaccount-sqs-policy
aws iam delete-role --role-name poc-crossaccount-sqs-role