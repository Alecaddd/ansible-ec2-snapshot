# ansible-ec2-snapshot
ec2 snapshot automation with Ansible and bash script

## Installation

* Install Ansible on your AWS ec2 with `pip install ansible`
* Be sure your ec2 is running the latest version of bob `pip install bobo3`
* Clone this repo or upload these files in your user directory

## Usage

Setup your ec2 Variables in the `vars/ec2_env.yml` file

```YAML
device_name: # Instance Root Device (eg. /dev/sda)
name: # Your EC2 Instance Name
ec2_url: # Instance Region URL (eg. https://ec2.us-east-1.amazonaws.com)
ec2_region: # Instance Region (eg. us-east-1)
```

Update the `ec2_snapshot.sh` script to set if you want to add or delete a snapshot

```Shell
ansible-playbook playbook.yml -e"add_snapshot=true del_snapshot=false"
```

Create a CRON job to execut the script automatically

```
# Run the script once a month
0 0 1 * * ansible-ec2-snapshot/ec2_snapshot.sh
```