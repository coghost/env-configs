#!/bin/bash

sudo umount /Volumes/LFPPRIV
sudo umount /Volumes/LFPWD
sudo mkdir /Volumes/wdpriv
sudo mkdir /Volumes/wdpub

sudo mount_ntfs -o rw,nobrowse /dev/disk2s1 /Volumes/wdpub
sudo mount_ntfs -o rw,nobrowse /dev/disk2s2 /Volumes/wdpriv
