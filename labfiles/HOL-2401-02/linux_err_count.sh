#!/bin/bash

# Number of SYSLOG errors in the last 24 hours

error_count=$(grep -i "error" /var/log/syslog | grep "$(date --date='24 hours ago' '+%b %e')" | wc -l)

echo $error_count

# Set the exit code to the value of the error count
exit $error_count

