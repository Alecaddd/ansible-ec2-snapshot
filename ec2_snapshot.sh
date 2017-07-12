#!/bin/bash

ansible-playbook playbook.yml -e"add_snapshot=true del_snapshot=false"

# CRON job
# 0 0 1 * * ansible-ec2-snapshot/ec2_snapshot.sh