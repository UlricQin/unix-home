#! /usr/bin/env bash

user=$1

cnt=$(cat /etc/passwd | grep ":/home/$user:" | wc -l)

if [ "$cnt" = "1" ]; then
    echo "user $user exists. do nothing"
else
    groupadd $user
    useradd $user -m -g $user -s /bin/bash
    echo -e "$user\n$user" | passwd $user
fi

echo "done:)"

