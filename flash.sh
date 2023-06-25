#!/bin/bash

USAGE="flash.sh IMAGE_PATH DEVICE_PATH"

if [ "$EUID" -ne 0 ]; then 

  echo "Please run as root"
  echo $USAGE
  exit 1
fi

if [ "$#" -ne 2 ]; then 
  echo "incorrect usage: $#"
  echo $USAGE
  exit 1
fi


source  rpi_image_utils.sh

debian_image=$1
sd_card_path=$2 #'/dev/sda'
flash_image $debian_image $sd_card_path

#mount sd card with the new image
#touch ssh file to root of mounted sd card
