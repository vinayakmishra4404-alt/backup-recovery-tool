#!/bin/bash

case "$1" in
    backup)
        ./scripts/backup.sh "$2"
        ;;
    restore)
        ./scripts/restore.sh
        ;;
    *)
        echo "Usage:"
        echo "./run.sh backup <directory>"
        echo "./run.sh restore"
        ;;
esac
