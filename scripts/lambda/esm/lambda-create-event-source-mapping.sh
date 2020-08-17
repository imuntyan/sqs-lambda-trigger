#!/bin/sh

aws lambda --region=us-east-2 create-event-source-mapping --cli-input-json file://lambda-create-event-source-mapping.json
