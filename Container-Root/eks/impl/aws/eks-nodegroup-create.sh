#!/bin/bash

. ./nodegroup.conf

CMD="aws eks create-nodegroup --cluster-name $CLUSTER --nodegroup-name $NODEGROUP_NAME --node-role $NODE_ROLE_ARN --region $REGION --subnets $SUBNETS --launch-template id=${LAUNCH_TEMPLATE_ID} --scaling-config minSize=${MIN_SIZE},maxSize=${MAX_SIZE},desiredSize=${DESIRED_SIZE}"

echo "$CMD"
eval "$CMD"
