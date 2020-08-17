#!/bin/sh

aws iam create-policy --policy-name poc-crossaccount-sqs-policy --description 'Access to SQS' --policy-document file://iam-create-policy-content.json