#!/bin/bash

# Block a malicious IP address using iptables

TARGET_IP=$1

if [ -z "$TARGET_IP" ]; then
    echo "Usage: $0 <IP_ADDRESS>"
    exit 1
fi

echo "[*] Adding iptables rule to block IP: $TARGET_IP"
iptables -A INPUT -s "$TARGET_IP" -j DROP
echo "[*] IP address $TARGET_IP has been blocked."
