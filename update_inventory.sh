#!/bin/bash
# Get Terraform output automatically
EC2_IP=$(cd /mnt/c/Users/KDency/Tf-den/terraform_infra && ./terraform.exe output -raw ec2_public_ip)

if [ -z "$EC2_IP" ]; then
  echo "❌ No EC2 IP found. Run 'terraform apply' in phase1 first."
  exit 1
fi

echo "✅ Found EC2 IP: $EC2_IP"

# Update Ansible inventory file
cat > /mnt/c/Users/KDency/ansible-phase3-config/inventory.ini <<EOF
[all]
ec2-instance ansible_host=$EC2_IP ansible_user=ec2-user ansible_ssh_private_key_file=~/.ssh/deployer.pem

[all:vars]
ansible_python_interpreter=/usr/bin/python3
EOF

echo "✅ Updated inventory.ini with IP $EC2_IP"
