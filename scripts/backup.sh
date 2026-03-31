#!/bin/bash 
source ./scripts/utils.sh

# ==============================
# Backup Script
# ==============================

# Check if argument is provided
if [ -z "$1" ]; then
    echo "❌ Error: Please provide a directory path"
    echo "Usage: ./run.sh backup <directory>"
    exit 1
fi

SOURCE_DIR=$1

# Check if directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ Error: Directory does not exist"
    exit 1
fi

# Create timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup file name
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

# Backup directory
BACKUP_DIR="./backups"

# Create backup
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

# Check if success
if [ $? -eq 0 ]; then
    echo "✅ Backup created successfully!"
    echo "📁 File: $BACKUP_DIR/$BACKUP_NAME"

    if [ $? -eq 0 ]; then
    echo "✅ Backup created successfully!"
    echo "📁 File: $BACKUP_DIR/$BACKUP_NAME"

    log_message "Backup created: $BACKUP_NAME"

else
    echo "❌ Backup failed"
fi
else
    echo "❌ Backup failed"
fi

