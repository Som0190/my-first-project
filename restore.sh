#!/bin/bash
echo "=== RESTORE MODE ==="
ls -lh ~/Backups/
cp -v ~/Backups/notes.txt ~/my-first-project/restored_notes.txt
cp -v ~/Backups/secret.txt ~/my-first-project/restored_secret.txt 2>&1 || echo "secret.txt is locked (chmod 000) - use sudo to restore it"
echo "Restore done at $(date)"
ls -lh restored_*
