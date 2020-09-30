#!/bin/bash

#!/bin/bash

echo $ANSIBLE_VAULT_PASSWORD >> /tmp/.vault

echo $AZURE_CLIENT_ID

ansible-galaxy install -r roles/requirements.yml

if ! ansible-playbook -i hosts site.yml --vault-password-file /tmp/.vault; then
  echo "Ansible failed!"
  rm .vault
  exit 1
else
  rm /tmp/.vault
fi