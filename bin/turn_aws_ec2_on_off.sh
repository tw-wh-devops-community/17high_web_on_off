#! /bin/bash
instanceId=$(eval "aws ec2 describe-instances --filters 'Name=tag:Name,Values="$EC2_INSTANCE_NAME"' --output text --query 'Reservations[*].Instances[*].InstanceId'")
state=$(eval "aws ec2 describe-instances --filters 'Name=tag:Name,Values="$EC2_INSTANCE_NAME"' --output text --query 'Reservations[*].Instances[*].State.Name'")
if [ "$state" == "stopped" ]; then
    echo "Instance $instanceId has already been stopped."
else
    echo "Stop instance $instanceId"
    aws ec2 stop-instances --instance-ids $instanceId
fi
