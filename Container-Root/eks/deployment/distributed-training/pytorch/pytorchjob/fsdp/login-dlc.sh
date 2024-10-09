#!/bin/bash

. .env
REGISTRY=763104351884.dkr.ecr.${AWS_REGION}.amazonaws.com

# Login to DLC registry
echo ""
echo "Logging in to DLC registry: $REGISTRY ..."
aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin $REGISTRY

