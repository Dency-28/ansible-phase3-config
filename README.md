# Ansible Phase 3 Configuration

This repository contains Ansible playbooks and GitHub Actions workflow for Phase 3 of the infrastructure setup: Configuration Management.

## 📦 Contents

- `install_dependencies.yml`: Installs Java, Node.js, Docker on EC2.
- `deploy_containers.yml`: Pulls Docker images and runs backend/frontend containers.
- `configure_nginx.yml`: Sets up NGINX reverse proxy.
- `env_and_ssl.yml`: Sets environment variables and SSL certificates.
- `rolling_update.yml`: Performs rolling updates for backend container.
- `inventory.ini`: Defines EC2 instance for Ansible.
- `.github/workflows/ansible.yml`: GitHub Actions workflow to run playbooks.

## 🚀 Usage

1. Ensure your EC2 instance is provisioned and accessible via SSH.
2. Add your private key as a GitHub secret (e.g., `ANSIBLE_SSH_KEY`).
3. Trigger the workflow manually via GitHub Actions.

## 🔐 SSH Setup

- Use `inventory.ini` to define your EC2 instance.
- Make sure your `.pem` key is stored securely.
- Add it to GitHub secrets and reference it in your workflow.

## 🛠️ Requirements

- Ansible installed on runner or local machine.
- EC2 instance with Ubuntu and SSH access.
- Docker images pushed to Docker Hub or AWS ECR.

