#! /usr/bin/bash

ansible all \
    -i ./hosts \
    -u `cat ./VAR_USER` \
    --private-key `cat ./VAR_PK_PATH` \
    -m ping 