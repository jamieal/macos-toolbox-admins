#!/bin/zsh

# Get primary network interface
PRIMARY_INTERFACE=$(route get default | grep interface | awk '{print $2}')

# Get IP address
IP_ADDRESS=$(ifconfig "$PRIMARY_INTERFACE" | grep "inet " | awk '{print $2}')

# Get WiFi network name (if connected)
WIFI_NETWORK=$(networksetup -getairportnetwork en0 | awk -F': ' '{print $2}')

# Check if VPN is connected
VPN_CONNECTED=$(scutil --nc list | grep Connected | wc -l | xargs)