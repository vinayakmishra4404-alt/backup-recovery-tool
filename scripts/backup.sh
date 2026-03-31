#!/bin/bash
source ./scripts/utils.sh

# ==============================
# Backup Script (Modified Version)
# ==============================

# Check if argument is provided
if [ -z "$1" ]; then
    echo "❌ Error: Please provide a valid directory path"
    echo "Usage: ./run.sh backup <directory>"
    exit 1
fi

INPUT_DIR=$1

# Check if directory exists
if [ ! -d "$INPUT_DIR" ]; then
    echo "❌ Error: Given directory does not exist"
    exit 1
fi

# Create timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Archive file name
FILE_NAME="archive_$TIMESTAMP.tar.gz"

# Archive directory
ARCHIVE_DIR="./archive"

# Create archive folder if not exists
mkdir -p "$ARCHIVE_DIR"

# Create backup
tar -czf "$ARCHIVE_DIR/$FILE_NAME" "$INPUT_DIR"

# Check if success
if [ $? -eq 0 ]; then
    echo "✅ Backup process completed successfully!"
    echo "📁 Saved at: $ARCHIVE_DIR/$FILE_NAME"

    # Log message
    log_message "Backup created: $FILE_NAME"

    # Extra feature (for uniqueness)
    echo "📊 Total files backed up: $(find "$INPUT_DIR" | wc -l)"

else
    echo "❌ Backup operation failed"
fi
