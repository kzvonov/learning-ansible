# Ansible Recipes

This's a collection of Ansible recipes I'm building for myself for educational purpose.

## Requirements

* [What Ansible is?](https://www.youtube.com/watch?v=1id6ERvfozo)
* [Ansible setup guide for Ubuntu 18](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-18-04)

## Resoures

* [Ansible cheat-sheet](https://www.digitalocean.com/community/cheatsheets/how-to-use-ansible-cheat-sheet-guide)
* [Digital Ocean Playbooks](https://github.com/do-community/ansible-playbooks)

## First Steps

Run below commands:

```bash
cd ./Base

cp hosts.sample.yml hosts.yml
```

Updated your new `hosts.yml` like so:

```yml
base:
  hosts:
    base1:
      ansible_host: 127.0.0.1 # REAL IP HERE
    base2:
      ansible_host: 127.0.0.2 # Another serer IP if you need more

  vars:
    ansible_user_name: ansible
    ansible_user_pub_keys:
      - ~/.ssh/id_rsa.pub # You need to specify public key path here

```

Run the command:

```bash
ansible-playbook \
    -i ./hosts.yml \
    --key-file ~/.ssh/id_rsa.pub \ # (1) in case of ssh key
    -k \ # (2) in case if you know the password
    create_ansible_user.yml
```

Done! Now you have the special user for other playbooks!

## Todo MySQL

* [Step By Step](https://blog.ssdnodes.com/blog/step-by-step-ansible-guide/)
* Part 1: https://blog.ssdnodes.com/blog/secure-ansible-playbook/
* Part 2: https://blog.ssdnodes.com/blog/secure-ansible-playbook-2/