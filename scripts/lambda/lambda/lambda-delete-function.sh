#!/bin/sh

aws lambda --region=us-east-2 delete-function --function-name=poc-crossaccount-sqs-lambda
