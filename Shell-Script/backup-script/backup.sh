#!/bin/bash

# Backup project folder

SOURCE="/home/ubuntu/project"
DEST="/home/ubuntu/backups"
DATE=$(date +%F)

echo "Backing up $SOURCE to $DEST..."
mkdir -p $DEST
tar -czf $DEST/project-backup-$DATE.tar.gz $SOURCE

echo "Backup complete: $DEST/project-backup-$DATE.tar.gz"
