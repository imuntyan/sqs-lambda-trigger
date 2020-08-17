#!/bin/sh

aws iam create-role --role-name poc-crossaccount-sqs-role --assume-role-policy-document file://iam-create-role-policy-document.json