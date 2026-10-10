#!/bin/bash

DATE=$(date +"%m-%d-%Y")

netfile="{USER}_${DATE}_centos_network_report.txt"

#obtains general information of the machine you are working on
echo "----------Host_Name----------" > $netfile
hostnamectl >> $netfile

#information on your IP Address, Network card and subnet mask
echo "----------Network----------" >> $netfile
ip a >> $netfile

# shows the Designated default gateway(router), return address, and that information leaves through the netcard enp0s3
echo "----------Ip_Route----------" >> $netfile
ip route show >> $netfile

# Shows the primary and secondary DNS 8.8.8.8 (google.com) and 8.4.4.8
echo "----------DNS----------" >> $netfile
cat /etc/resolv.conf >> $netfile

# Shows DHCP settings for IPv-4 and IPv-6, and clearly labled interface.
echo "----------Network_Manager_file----------" >> $netfile
cat /etc/NetworkManager/system-connections/*.nmconnection >> $netfile

#just something to make sure that everything comes out properly and bash reached the end of my script.
echo "----------Data_collection_complete----------" >> $netfile
