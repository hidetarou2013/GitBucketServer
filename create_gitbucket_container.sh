#!/bin/bash

# run shell
# sh create_gitbucket_container.sh gitbucket160912 60912 29418
# sh create_gitbucket_container.sh gitbucket160913 60913 29913
#
# param1: container name
# param2: gitbucket web service port
# param3: gitbucket ssh service port

mkdir -p /home/vagrant/gitbucket/data/$1
docker run --name $1  -d -p $2:8080  -p $3:29418 -v /home/vagrant/gitbucket/data/$1:/gitbucket sken/gitbucket

echo "access url : http://192.168.44.128:$2" 
echo "root/root" 
docker ps

exit 0
