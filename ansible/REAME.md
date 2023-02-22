# Introduction

[![Build Status](https://dev.azure.com/8902828/Public/_apis/build/status/cli-tools/ansible/ansible-ci?branchName=main)](https://dev.azure.com/8902828/Public/_build/latest?definitionId=14&branchName=main)

- **Tool**: Ansible <br/>
- **Container**: gstmichel/ansible
- **CI**: [ansible-ci](https://dev.azure.com/8902828/Public/_build?definitionScope=%5Ccli-tools%5Cansible)

# Alias creation

    ANSIBLE_VERSION=2.14.2
    alias ansible='docker run --rm -it -v "$(pwd):/workspace" -v "$HOME/.ansible:/home/ansible/.ansible" gstmichel/ansible:$ANSIBLE_VERSION ansible $@'
    alias ansible-config='docker run --rm -it -v "$(pwd):/workspace" -v "$HOME/.ansible:/home/ansible/.ansible" gstmichel/ansible:$ANSIBLE_VERSION ansible-config $@'
    alias ansible-console='docker run --rm -it -v "$(pwd):/workspace" -v "$HOME/.ansible:/home/ansible/.ansible" gstmichel/ansible:$ANSIBLE_VERSION ansible-console $@'
    alias ansible-doc='docker run --rm -it -v "$(pwd):/workspace" -v "$HOME/.ansible:/home/ansible/.ansible" gstmichel/ansible:$ANSIBLE_VERSION ansible-doc $@'
    alias ansible-galaxy='docker run --rm -it -v "$(pwd):/workspace" -v "$HOME/.ansible:/home/ansible/.ansible" -v "$HOME/.ssh:/home/ansible/.ssh:ro" gstmichel/ansible:$ANSIBLE_VERSION ansible-galaxy $@'
    alias ansible-inventory='docker run --rm -it -v "$(pwd):/workspace" -v "$HOME/.ansible:/home/ansible/.ansible" gstmichel/ansible:$ANSIBLE_VERSION ansible-inventory $@'
    alias ansible-playbook='docker run --rm -it -v "$(pwd):/workspace" -v "$HOME/.ansible:/home/ansible/.ansible" gstmichel/ansible:$ANSIBLE_VERSION ansible-playbook $@'
    alias ansible-pull='docker run --rm -it -v "$(pwd):/workspace" -v "$HOME/.ansible:/home/ansible/.ansible" gstmichel/ansible:$ANSIBLE_VERSION ansible-pull $@'
    alias ansible-vault='docker run --rm -it -v "$(pwd):/workspace" -v "$HOME/.ansible:/home/ansible/.ansible" gstmichel/ansible:$ANSIBLE_VERSION ansible-vault $@'

---
