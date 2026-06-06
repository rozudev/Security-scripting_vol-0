#!/bin/bash

# Set the source directory to backup
SOURCE_DIR="/home/volter/Documents"

# Backup destination
BACKUP_DIR="/home/volter/backups"

# Create timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Backup file name
BACKUP_FILE="backup_${TIMESTAMP}.tar.gz"

# Create backup directory if it doesn'n exist
mkdir -p "$BACKUP_DIR"

# Create compressed backup
tar -czf "${BACKUP_DIR}/${BACKUP_FILE}" "$SOURCE_DIR"

# Delete backups older than 30 days
find "$BACKUP_DIR" -name "backup_*.tar.gz" -mtime +30 -delete

# Log completion
echo "Backup completed on $(date)" >> "${BACKUP_DIR}/backup.log"

echo "backup successful!"
