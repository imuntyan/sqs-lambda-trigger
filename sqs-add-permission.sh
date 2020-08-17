#!/bin/sh

aws sqs --region=us-east-2 add-permission --cli-input-json file://sqs-add-permission.json