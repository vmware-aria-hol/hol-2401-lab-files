#!/usr/bin/bash

# Hostname
echo "Hostname: $(hostname)"

# IP Address
ip_address=$(hostname -I)
echo "IP Address: $ip_address"

# CPU
cpu_info=$(lscpu | grep "Model name" | awk -F ':' '{print $2}' | sed 's/^[ \t]*//')
echo "CPU: $cpu_info"

# Memory
memory_info=$(free -h | awk '/Mem:/{print $2}')
echo "Memory: $memory_info"

# Disk
disk_info=$(df -h --total | awk '/total/{print $2}')
echo "Disk: $disk_info"

# Operating System
os_info=$(lsb_release -d | awk -F ':' '{print $2}' | sed 's/^[ \t]*//')
echo "Operating System: $os_info"

# Kernel Version
kernel_info=$(uname -r)
echo "Kernel Version: $kernel_info"

# System Uptime
uptime_info=$(uptime -p)
echo "System Uptime: $uptime_info"

# Logged in Users
users_info=$(who | awk '{print $1}' | sort | uniq | wc -l)
echo "Logged in Users: $users_info"

# Network Interfaces
interfaces_info=$(ip -o -4 addr show | awk '{print $2, $4}')
echo -e "Network Interfaces:\n$interfaces_info"

