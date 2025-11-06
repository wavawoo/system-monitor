#!/bin/bash

LOG_DIR="./log"
LOG_FILE="$LOG_DIR/system_status.log"

mkdir -p $LOG_DIR

echo "$(date '+%Y-%m-%d %H:%M:%S')" >> $LOG_FILE

echo "CPU Load:" >> $LOG_FILE
uptime | awk -F'load average:' '{ print $2 }' >> $LOG_FILE

echo "Memory usage:" >> $LOG_FILE
free -h >> $LOG_FILE

echo "Disk usage:" >> $LOG_FILE
df -h --total | grep total >> $LOG_FILE

echo "Top 5 processes by memory:" >> $LOG_FILE
ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 6 >> $LOG_FILE

echo "" >> $LOG_FILE
