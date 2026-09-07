#!/bin/bash
echo "=== Starting Backup ==="
date
mkdir -p ~/Backups
cp -v *.txt ~/Backups/
echo "Backup Done! File in ~/Backups:"
ls -1h ~/Backups/
