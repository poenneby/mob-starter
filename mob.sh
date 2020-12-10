#!/bin/bash

usage() {
  echo "Argument must be one of: start | navigator | driver | stop"
  exit 0
}

if [ -z "${1}" ]; then
  usage
fi

branch_name=mob-$(date +"%Y%m%d")

if [ $1 = "start" ]; then
  echo "Starting mob session - you are now driver!"
  git checkout -b ${branch_name}
  git push origin ${branch_name}
  exit 0
fi

if [ $1 = "navigator" ]; then
  echo "Changing driver - becoming navigator!"
  git add .
  git commit -m "[WIP] Changing driver"
  git push origin ${branch_name}
  exit 0
fi

if [ $1 = "driver" ]; then
  echo "Changing navigator - becoming driver!"
  git fetch
  git checkout .
  git clean -df
  git checkout ${branch_name}
  git reset --hard origin/${branch_name}
  exit 0
fi

if [ $1 = "stop" ]; then
  echo "Stopping mob session!"
  git add .
  git commit -m "Mob session ended"
  exit 0
fi
