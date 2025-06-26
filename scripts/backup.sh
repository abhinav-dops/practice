#!/bin/bash

# Create timestamp
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

# Create a backup folder relative to the current directory
DEST="./backups/backup_$TIMESTAMP"

# Create the destination directory
mkdir -p "$DEST"

# Copy all .log files from your current project directory (or any test logs)
cp *.log "$DEST" 2>/dev/null || echo "No .log files to copy."

# Final message
echo "Backup completed to $DEST"
