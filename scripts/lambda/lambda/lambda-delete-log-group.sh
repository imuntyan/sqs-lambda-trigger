#!/bin/sh

aws logs --region=us-east-2 delete-log-group --log-group-name=/aws/lambda/poc-crossaccount-sqs-lambda
