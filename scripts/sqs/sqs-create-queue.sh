#!/bin/sh

aws sqs --region=us-east-2 create-queue --cli-input-json file://sqs-create-queue.json