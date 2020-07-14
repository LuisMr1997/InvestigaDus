#!/usr/bin/env bash

set -x
set -e

environment=$1

if [[ ${environment} == "production" ]] ; then
  docker-compose -f docker-compose.yml -f docker-compose.production.yml up
else
  docker-compose up
fi
