#!/bin/bash

mkdir /root/nagios

cd /root/nagios

echo "Preparing to install Nagios........!!!"
mkdir /root/nagios
cd /root/nagios
echo "Downloading latest stable version installer"
wget http://assets.nagios.com/downloads/nagiosxi/xi-latest.tar.gz
# Begin installation
echo "Begining installation! Enjoy the ride!"
tar xzf xi-latest.tar.gz
(
cd /root/nagios/nagiosxi
./fullinstall
)


fmt -s -w $(tput cols) <<-EOF
        ====================
       All SET! Go in peace!

  *** UserName: nagiosadmin ***
  *** Password: nagiosadmin ***
        ====================

EOF

#Username: nagiosadmin
#Password: nagiosadmin
