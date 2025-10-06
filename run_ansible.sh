#!/bin/bash
# 1️⃣ Update inventory from Terraform
/mnt/c/Users/KDency/ansible-phase3-config/update_inventory.sh

# 2️⃣ Run Ansible playbook
ansible-playbook -i /mnt/c/Users/KDency/ansible-phase3-config/inventory.ini /mnt/c/Users/KDency/ansible-phase3-config/playbooks/configure_nginx.yml
