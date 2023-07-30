#!/bin/bash

# docker build -t light-table .

# bash
export UID=$(id -u)
export GID=$(id -g)
docker build --build-arg USER=$USER \
             --build-arg UID=$UID \
             --build-arg GID=$GID \
             --build-arg PW=docker \
             -t light-table \
             .
