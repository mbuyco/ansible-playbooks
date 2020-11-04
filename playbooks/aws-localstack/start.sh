#!/bin/bash

CWD="$(cd $(dirname $0); pwd -P)"

export AWS_CONFIG_FILE=$CWD/../../files/aws-config

ansible-playbook -i "$CWD/../../hosts" "$CWD/provision-ec2.yaml"
