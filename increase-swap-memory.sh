#!/bin/sh

#---First, create a file which will be used as swap space:

sudo dd if=/dev/zero of=/swapfile bs=1024 count=1048576

#---set up a Linux swap area on the file:

sudo mkswap /swapfile

#---Run the following command to activate the swap:

sudo swapon /swapfile

#---Ensure that only the root user can read and write the swap file by setting the correct permissions :

sudo chmod 600 /swapfile

#---Next, set up a Linux swap area on the file:

sudo swapon /swapfile
