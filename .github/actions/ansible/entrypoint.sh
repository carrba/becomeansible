#!/bin/bash

#!/bin/bash

echo $ANSIBLE_VAULT_PASSWORD >> .vault

ansible-galaxy install -r roles/requirements.yml

if ! ansible-playbook -i hosts site.yml --vault-password-file .vault; then
  echo "Ansible failed!"
  rm .vault
  exit 1
else
  rm .vault
fi