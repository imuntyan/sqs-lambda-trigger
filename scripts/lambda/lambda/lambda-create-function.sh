#!/bin/sh

zip function.zip index.js
aws lambda --region=us-east-2 create-function --cli-input-json file://lambda-create-function.json --zip-file fileb://function.zip
rm function.zip
