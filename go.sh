#! /bin/sh

ansible-playbook \
    -i ./hosts \
    --key-file $PATH_TO_MY_KEY_FILE \
    -v $1
