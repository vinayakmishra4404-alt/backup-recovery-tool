#!/bin/bash

LOG_FILE="./logs/backup.log"

log_message() {
    MESSAGE=$1
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    
    echo "[$TIMESTAMP] $MESSAGE" >> "$LOG_FILE"
}
