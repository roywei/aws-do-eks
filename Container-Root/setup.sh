#!/bin/sh

######################################################################
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved. #
# SPDX-License-Identifier: MIT-0                                     #
######################################################################

if [ -d /etc/apt ]; then
        [ -n "$http_proxy" ] && echo "Acquire::http::proxy \"${http_proxy}\";" > /etc/apt/apt.conf; \
        [ -n "$https_proxy" ] && echo "Acquire::https::proxy \"${https_proxy}\";" >> /etc/apt/apt.conf; \
        [ -f /etc/apt/apt.conf ] && cat /etc/apt/apt.conf
fi

# Install basic tools
apt update && apt install -y curl jq vim less unzip git

# Install aws cli
./eks/ops/setup/install-aws-cli.sh

# Install eksctl
./eks/ops/setup/install-eksctl.sh

# Install kubectl
./eks/ops/setup/install-kubectl.sh

# Install kubectx
./eks/ops/setup/install-kubectx.sh

# Install and configure kubeps1
./eks/ops/setup/install-kubeps1.sh

# Install kubetail
./eks/ops/setup/install-kubetail.sh
