aws cloudformation create-stack \
    --template-body file://stack.yaml \
    --stack-name serverless \
    --region us-east-1 \
    --capabilities CAPABILITY_IAM
