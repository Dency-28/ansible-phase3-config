# SSH Setup for Ansible

To allow Ansible to connect to your EC2 instance:

## 🔑 Step 1: Generate or Use Existing SSH Key
Use an existing `.pem` file or generate one via AWS EC2 Key Pairs.

## 🔐 Step 2: Add SSH Key to GitHub Secrets
Go to your repository → Settings → Secrets → Actions → New repository secret

- Name: `ANSIBLE_SSH_KEY`
- Value: Paste the contents of your `.pem` file

## 🧩 Step 3: Reference in Workflow
Modify your GitHub Actions workflow to use the secret:

```yaml
- name: Setup SSH key
  run: |
    echo \"$ANSIBLE_SSH_KEY\" > key.pem
    chmod 600 key.pem
