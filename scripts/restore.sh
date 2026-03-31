#!/bin/bash

# ==============================
# Restore Script (Modified Version)
# ==============================

ARCHIVE_DIR="./archive"

# Check if archive folder exists
if [ ! -d "$ARCHIVE_DIR" ]; then
    echo "❌ No archive directory found"
    exit 1
fi

# Check if files exist inside archive
if [ -z "$(ls -A "$ARCHIVE_DIR")" ]; then
    echo "❌ No backup archives available"
    exit 1
fi

echo "📦 Available Backup Archives:"
ls "$ARCHIVE_DIR"

echo ""
read -p "Enter archive file name to restore: " ARCHIVE_FILE

# Validate file
if [ ! -f "$ARCHIVE_DIR/$ARCHIVE_FILE" ]; then
    echo "❌ Selected file does not exist"
    exit 1
fi

# Output directory
OUTPUT_DIR="./output"

# Create output directory if not exists
mkdir -p "$OUTPUT_DIR"

# Extract archive
tar -xzf "$ARCHIVE_DIR/$ARCHIVE_FILE" -C "$OUTPUT_DIR"

# Check result
if [ $? -eq 0 ]; then
    echo "✅ Restore operation completed successfully!"
    echo "📁 Files restored in: $OUTPUT_DIR"
else
    echo "❌ Restore operation failed"
fi
