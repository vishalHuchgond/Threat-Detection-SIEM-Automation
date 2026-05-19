# SOC Analyst Project

This project demonstrates the capabilities of a Security Operations Center (SOC). It includes detection rules for various attacks, attack simulations, automated response scripts, and SIEM configuration. The project is intended for SOC analysts and cybersecurity professionals aiming to monitor, detect, and respond to security events in real-time.

## Project Overview

This repository contains:
- Sigma detection rules for attack techniques such as Brute Force, Process Injection, and Suspicious DNS Queries.
- Attack simulation scripts to mimic real-world threats.
- Automated response scripts for threat mitigation.
- SIEM (Elastic Stack) configuration to collect, analyze, and visualize logs.
  
## Features

- **Sigma Rules**: Detection rules for common attack techniques, implemented in Sigma format.
- **Attack Simulations**: Scripts to simulate various attacks for testing detection rules.
- **Automated Response**: Scripts to automatically block IP addresses or take other actions when attacks are detected.
- **SIEM Integration**: Configuration for Elastic Stack (Elasticsearch, Kibana) to collect and visualize data from endpoints.
- **Reporting**: Documentation detailing the project and testing results.

## Project Structure

SOC-Analyst-Project/
├── Sigma-Rules/ # Sigma detection rules
├── Attack-Simulations/ # Attack simulation scripts
├── Automation-Scripts/ # Response automation scripts
├── Documentation/ # Project documentation and reports
├── SIEM-Config/ # SIEM configuration files


## Installation & Setup

### Prerequisites

- Install **Elastic Stack** (Elasticsearch, Logstash, Kibana) for SIEM capabilities.
- Ensure you have **PowerShell** or **Bash** for running simulation and automation scripts.


