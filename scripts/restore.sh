#!/bin/bash

# ==============================
# Restore Script
# ==============================

BACKUP_DIR="./backups"

# Check if backups exist
if [ ! "$(ls -A $BACKUP_DIR)" ]; then
    echo "❌ No backups found"
    exit 1
fi

echo "📦 Available Backups:"
ls $BACKUP_DIR

echo ""
read -p "Enter backup file name: " BACKUP_FILE

# Check if file exists
if [ ! -f "$BACKUP_DIR/$BACKUP_FILE" ]; then
    echo "❌ Invalid backup file"
    exit 1
fi

# Restore directory
RESTORE_DIR="./restored"

mkdir -p "$RESTORE_DIR"

# Extract backup
tar -xzf "$BACKUP_DIR/$BACKUP_FILE" -C "$RESTORE_DIR"

if [ $? -eq 0 ]; then
    echo "✅ Restore completed!"
    echo "📁 Restored in: $RESTORE_DIR"
else
    echo "❌ Restore failed"
fi

