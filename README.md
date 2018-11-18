# cloudformation-serverless-api


A simple, RESTful API using AWS Serverless (Cloudformation, API Gateway, Lambda, and DynamoDB).

# Overview

This project creates (and deploys) a Restful API with API Gateway, Lambda (Node), and Dynamo using Cloudformation.

Use this project as a guide to learn about the AWS command line tool, and the stack creation and code deploy process for a serverless architecture on AWS.

# What's in this project
* creat.sh
    * Bash commands for deploying cloudformation template
* index.js
  * Javascript for your Lambda to run
* requirements.txt
    * python packages to be isntall
* stack.yml
  * Definitions for your AWS resources (including Roles and Permissions, and Swagger)
  * This is a big file, but don't let it intimidate you

# Other Notes and Callouts
* The route configuration for API Gateway is embedded inside the API Gateway (MyApiGateway) configuration inside ```stack.yml```, which makes the YML more of a monstrosity than it already is.
* Environment variables inside the HelloLambda Lambda configuration page contain the info needed to connect to the HelloTable DynamoDB table.
* -SDK comes bundled with every Lambda function so we can use ``` require('aws-sdk')``` without a ```package.json``` Very handy!
* Instead of copying and pasting the NodeJS code into the embedded editor inside the Lambda Details page, you can deploy your code through the AWS CLI. We copy and paste for simplicity.
* Be warned, the CloudFormation Stack Template is overwhelmingly verbose by nature.
* HelloTable DynamoDB table’s primary partition key is **userId**
