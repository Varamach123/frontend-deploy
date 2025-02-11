#!/bin/bash
component=$1
environment=$2
app_version=$3
dnf install ansible -y
pip3.9 install botocore boto3
ansible-pull -i localhost, -U https://github.com/Varamach123/EExpense-infra-deev.git main.yaml -e component=$component -e env=$environment -e appVersion=$3