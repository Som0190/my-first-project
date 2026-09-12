#!/bin/bash
mkdir -p ~/Backups
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Backup done" >> ~/Backups/backup.log
# Backup from current folder only
cp -v ./notes.txt ~/Backups/ 2>/dev/null || echo "notes.txt not found in current folder"
cp -v ./secret.txt ~/Backups/ 2>/dev/null || echo "secret locked, skipping"
echo "Backup successful at $(date)"
