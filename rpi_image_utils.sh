#!/bin/bash

get_image(){
  local image_url='https://downloads.raspberrypi.org/raspbian_latest'
  wget $image_url
}

flash_image(){

  if [ "$#" -ne 2 ];
  then
    echo 'Usage: flash_image imagefile diskpath'
    exit 1
  fi
  
  local image_filename="$1"
  local disk_path="$2"

  echo "Are you sure you want to flash the disk image $image_filename to the disk at $disk_path. only 'yes' will succeed"
  read answer
  echo "answer: $answer"
  if [ "$answer" == "yes" ];
  then
    echo "copying $image_filename to $disk_path"
    sudo dd bs=1M if=$image_filename of=$disk_path 
  fi
}
