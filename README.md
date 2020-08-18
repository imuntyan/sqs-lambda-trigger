## Content

- ```scripts/sqs``` contains the scripts to create and configure SQS queue
- ```scripts/lambda``` contains the scripts to create and configure Lambda service 
and related services and permissions
- ```scripts/identity``` contains utility script to check for the current AWS account

The account numbers and region are hardcoded

## Run

- Create AWS session in the account where SQS should be created
- Create SQS (producer side):
  ```bash
  cd sqs
  ./create-all.sh
    ```
- Create SQS KMS Key (producer side). Do it once only - deleting keys takes time:
  ```bash
  cd sqs/kms
  ./kms-create-key.sh
    ```
- Create AWS session in the account where lambda consumer should be created
- Create Lambda and related services and permissions (consumer side):
  ```bash
  cd lambda
  ./create-all.sh
  ```
  
That's it

## Cleanup

- Create AWS session into SQS account
- Run
  ```bash
  cd sqs
  ./delete-all.sh
  ```
- Create AWS session into Lambda account
- Run
  ```bash
  cd lambda
  ./delete-all.sh
  ```
  
  That's it