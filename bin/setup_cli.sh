#! /bin/bash
mkdir /home/travis/.aws
touch /home/travis/.aws/config
touch /home/travis/.aws/credentials
echo "[default]" >> ~/.aws/config
echo "region = cn-north-1" >> ~/.aws/config
echo "aws_access_key_id = $AWS_ACCESS_KEY_ID" >> ~/.aws/credentials
echo "aws_secret_access_key = = $AWS_ACCESS_KEY" >> ~/.aws/credentials
cat /home/travis/.aws/config
cat /home/travis/.aws/credentials