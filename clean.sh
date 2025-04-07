#!/usr/bin/env bash

set -e

swapoff -a
umount /mnt/*
parted /dev/sda --script 'rm 1 rm 2'
partprobe
systemctl daemon-reload
