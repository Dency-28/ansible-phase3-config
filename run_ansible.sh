#!/bin/bash

# Ensure private key exists
KEY_PATH=~/.ssh/deployer.pem
if [ ! -f "$KEY_PATH" ]; then
  echo "❌ SSH key not found at $KEY_PATH"
  exit 1
fi

# 🔑 Set correct permissions
chmod 600 $KEY_PATH
echo "✅ Permissions set to 600 for deployer.pem"

# 1️⃣ Update inventory from Terraform
/mnt/c/Users/KDency/ansible-phase3-config/update_inventory.sh

# 2️⃣ Test connectivity (optional but recommended)
ansible all -i /mnt/c/Users/KDency/ansible-phase3-config/inventory.ini -m ping

# 3️⃣ Run Ansible playbooks
ansible-playbook -i /mnt/c/Users/KDency/ansible-phase3-config/inventory.ini /mnt/c/Users/KDency/ansible-phase3-config/playbooks/configure_nginx.yml
