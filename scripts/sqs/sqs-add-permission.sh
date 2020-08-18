#!/bin/sh

aws sqs --region=us-east-2 remove-permission --cli-input-json file://sqs-remove-permission.json
aws sqs --region=us-east-2 add-permission --cli-input-json file://sqs-add-permission.json
