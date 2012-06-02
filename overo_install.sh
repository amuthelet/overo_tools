#!/usr/bash

echo "Setting up wifi.."
(cat /etc/network/interfaces ; echo '# My Wifi connection Arlene2\nallow-hotplug wlan0\niface wlan0 inet dhcp\n\twireless_mode managed\n\twireless_essid Arlene2\n\twireless_key ffff-ffff-ff\n') > ./tmp
sudo mv ./tmp /etc/network/interfaces
sudo rm ./tmp
ifdown wlan0
ifup wlan0

echo "Updating opkg.."
opkg update

echo "Installing C++ dev tools"
opkg install gcc
opkg install gcc-symlinks
opkg install libc6-dev
opkg install binutils
opkg install make
opkg install g++
opkg install g++-symlinks
opkg install libstdc++-dev
opkg install libstdc++6
opkg install task-native-sdk
opkg install swig

echo "Installing libusb tools"
opkg install libusb-0.1-4
opkg install libusb-0.1-dev
opkg install libusb-1.0-0
opkg install libusb-1.0-dev
opkg install libusb-1.0-static

opkg install usbutils
opkg install usbutils-dev

echo "Installing python tools"
opkg install python python-dev python-modules python-textutils python-zlib python-distutils python-simplejson

echo DONE

