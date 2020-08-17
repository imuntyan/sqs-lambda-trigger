#!/bin/sh

aws iam create-role --role-name poc-crossaccount-sqs-role --assume-role-policy-document file://iam-create-role-policy-document.json
aws iam attach-role-policy --role-name poc-crossaccount-sqs-role --policy-arn arn:aws:iam::854045450972:policy/poc-crossaccount-sqs-policy