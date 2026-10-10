#!/bin/bash

# Creates the date variable and stores the date as month day and year
DATE=$(date +"%m-%d-%Y")

# Combines my username the date variable and
netfile="dperez_${DATE}_ubuntu_network_report.txt"

echo "----------HOST NAME AND SYSTEM INFO----------" > $netfile

# Outputs hostnamectl command data to saved file.
hostnamectl >> $netfile

echo "----------NETWORK INTERFACE & IP----------" >> $netfile

# Takes IP data and appends the data beneath hostnamectl.
ip a >> $netfile

echo "----------ROUTING TABLE & DEFAULT GATEWAY----------" >> $netfile

# Adds default gateway data beneath IP data
ip route show >> $netfile

echo "----------DNS----------" >> $netfile

# Appends nameserver data from resolv.conf file to report
cat /etc/resolv.conf >> $netfile

echo "----------RAW NETPLAN CONFIG FILE----------" >> $netfile

# Appends network configuration to netfile
cat /etc/netplan/*.yaml >> $netfile
