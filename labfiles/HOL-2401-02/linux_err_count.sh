#!/usr/bin/bash

# Number of SYSLOG errors in the last 7 days

error_count=$(grep -i "error" /var/log/syslog | grep "$(date --date='7 days ago' '+%b %e')" | wc -l)

echo $error_count
