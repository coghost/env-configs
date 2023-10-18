#!/bin/bash

sudo umount /Volumes/LiQY
sudo mkdir /Volumes/udisk

# df -h 查看挂载信息
sudo mount_ntfs -o rw,nobrowse /dev/disk2s1 /Volumes/udisk
