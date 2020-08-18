#!/bin/sh

aws sqs --region=us-east-2 delete-queue --queue-url=https://us-east-2.queue.amazonaws.com/160306773861/poc-crossaccount-sqs.fifo
