#!/bin/sh

aws iam create-role --role-name poc-crossaccount-sqs-role --assume-role-policy-document file://role/iam-create-role-policy-document.json