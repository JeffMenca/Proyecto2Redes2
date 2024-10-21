#!/bin/bash

#INTERFACES
cat << EOL | sudo tee /etc/network/interfaces > /dev/null
source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

#Red LAN-FW
auto enp7s0
iface enp7s0 inet static
  address 192.168.100.3/24
EOL

ip route del default
ip route add default via 192.168.100.1 dev enp7s0
