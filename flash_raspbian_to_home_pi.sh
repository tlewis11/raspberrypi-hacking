#!/bin/bash


. rpi_image_utils.sh

#curl -O https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2022-01-28/2022-01-28-raspios-bullseye-armhf.zip

#unzip  2022-01-28-raspios-bullseye-armhf.zip
debian_image='2022-01-28-raspios-bullseye-armhf.img'
sd_card_path='/dev/sda'
flash_image $debian_image $sd_card_path