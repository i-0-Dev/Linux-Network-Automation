# Linux-Network-Automation_Scripts

Bash scripts created to automate network diagnostics, interface discovery, and system verification for CentOS and Ubuntu_servers

The scripts collect system data and output them to a dated and user-specified log file for admin troubleshooting.

## Information Collected
*  **System Identity:** Hostname config Details using `hostnamectl`.
*  **Layer 3 Networking:** Active Interfaces, IP assignments, Subnet masks using `ip a`.
*  **Routing:** Routing tables and default gateways routes using `ip route show`.
*  **Domain Name Resolution:** Shows DNS nameservers using `/etc/resolv.conf`.
*  **Interface Configuration:** raw config data (`Netpaln YAML` files on Ubuntu; ` NetworkManager .nmconnection` files on CentOS).

## How to use

To execute these scripts on your server terminal, you can copy or download the the script and run:

### Ubuntu Server Diagnostics
```bash
chmod +x ubuntu_net_dump.sh
./ubuntu_net_dump.sh
```

### CentOS Diagnostics
```bash
chmod +x centos_net_dump.sh
./centos_net_dump.sh
```

## Generated Outputs
After executing, the script will output a text file that reports the requested data 
*  `[USER]_[MM-DD-YYYY]_ubuntu_network_report.txt`
*  `[USER]_[MM-DD-YYYY]_centos_network_report.txt`
