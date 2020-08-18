#!/bin/sh

keyid=$(aws kms --region=us-east-2 create-key --cli-input-json file://kms-create-key.json | jq -r '.KeyMetadata.KeyId')

#keyid="810bb79b-51c8-4bb5-b3da-5278be893f1b"
aws kms --region=us-east-2 create-alias --alias-name "alias/poc-crossaccount-sqs-key" --target-key-id $keyid