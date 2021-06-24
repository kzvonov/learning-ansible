# Ansible Recipes

This's a collection of Ansible recipes I'm building for myself for educational purpose.

## Requirements

* [What Ansible is?](https://www.youtube.com/watch?v=1id6ERvfozo)
* [Ansible setup guide for Ubuntu 18](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-18-04)

## Resoures

* [Ansible cheat-sheet](https://www.digitalocean.com/community/cheatsheets/how-to-use-ansible-cheat-sheet-guide)
* [Digital Ocean Playbooks](https://github.com/do-community/ansible-playbooks)

## First Steps

First of all, you need to run Base.v2 playbook.

Run the below commands:

```bash
cd ./Base.v2

cp hosts.sample.yml hosts.yml
```

Then open `hosts.yml` & fill `vars:` with the data. Be carefull with `ansible_user_pass`, there're additional instructions!

When it's done you can run the playbook:

```bash
ansible-playbook \
  -i ./hosts.yml \
  --key-file ~/path/to/your/key \ # If your server configure to use root with key
  -k \ # If it's root user with passwored
  provision.yml
```

That's it! Your new user from `hosts.yml:vars` is ready to use.

Please, use this user for other playbooks. Since it's not okay to run playbooks unde `root` user.

## MySQL

A guide to the MySQL playbook.

```bash
cd ./MySQL

# Install community.mysql Ansible module
# We need it to configure MySQL on the remote servers
ansible-galaxy collection install -r ./requirements.yml

# Copy inventory & fill with your data
cp ./inventory.sample.yml ./inventory.yml 
```
