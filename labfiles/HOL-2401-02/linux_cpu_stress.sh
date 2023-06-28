#!/usr/bin/bash

# ########################
# This script creates 20 infinite loops for CPU stress 
# and 
# 20 x 256MB files in memory. 
# After 10 minutes, it kills all background processes and  the stress test.

# Function to create CPU load
generate_cpu_load() {
    # infinite loop
    while :
    do
        :
    done &
}

# Function to create memory load
generate_mem_load() {
    # Allocate 256MB memory in /dev/shm
    dd if=/dev/zero of=/dev/shm/stress_test bs=1M count=256 &
}

# Create CPU load
for i in `seq 1 20`;
do
    generate_cpu_load
done

# Create Memory load
for i in `seq 1 20`;
do
    generate_mem_load
done

# Sleep for 10 minutes
sleep 600

# Kill all background jobs when we're done
kill $(jobs -p)
