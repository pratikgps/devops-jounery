#!/bin/bash

# log-cleaner.sh - Remove logs older than 7 days
LOG_DIR="/var/log"
DAYS=7

echo "Cleaning logs older than $DAYS days in $LOG_DIR..."
sudo find $LOG_DIR -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo "Old logs cleaned up!"
