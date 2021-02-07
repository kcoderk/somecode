#!/usr/bin/env bash

index=10
while [ $index -ne 0 ]; do
  index=$(($index - 1))
  printf "\r %3d s后自动重启，按任意键取消重启 " $index
  if read -n 1 -t 1 -s input
  then
    echo
    exit 1
  fi
done

#重启
sudo reboot
