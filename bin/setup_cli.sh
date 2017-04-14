#! /bin/bash
mkdir ~/.aws
touch ~/.aws/config
touch ~/.aws/credentials
echo "region = cn-norht-1" >> ~/.aws/config
echo "aws_access_key_id = $AWS_ACCESS_KEY_ID" >> ~/.aws/credentials
echo "aws_secret_access_key = = $AWS_ACCESS_KEY" >> ~/.aws/credentials