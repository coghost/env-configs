#!/bin/bash

sudo umount /Volumes/老毛桃U盘
sudo mkdir /Volumes/udiskpriv

# df -h 查看挂载信息
sudo mount_ntfs -o rw,nobrowse /dev/disk3s1 /Volumes/udiskpriv
