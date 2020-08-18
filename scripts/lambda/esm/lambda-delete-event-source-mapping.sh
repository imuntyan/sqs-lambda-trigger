#!/bin/sh

aws lambda --region=us-east-2 delete-event-source-mapping --uuid \
`aws lambda --region=us-east-2 list-event-source-mappings --function-name poc-crossaccount-sqs-lambda | jq -r '.EventSourceMappings[0].UUID'`
