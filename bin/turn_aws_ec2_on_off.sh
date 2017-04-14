#! /bin/bash
instanceId=$(eval "aws ec2 describe-instances --filters 'Name=tag:Name,Values="$EC2_INSTANCE_NAME"' --output text --query 'Reservations[*].Instances[*].InstanceId'")
echo "Stop instance $instanceId"
aws ec2 stop-instances --instance-ids $instanceId