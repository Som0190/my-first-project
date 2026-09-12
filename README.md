# 🔄 My First Linux Backup System - DevOps Project

A simple, automated backup & restore system built with Bash, Cron, Docker & Git.

### ✅ Features
- **Automated Backup:** Backs up `notes.txt` & `secret.txt` to `~/Backups/`
- **No Permission Errors:** Fixed ownership & permissions (12K clean backup)
- **Logging:** Timestamped logs with backup count (`backup.log` + `wc -l`)
- **Restore:** One-click restore with `./restore.sh`
- **Docker Ready:** Runs anywhere with Dockerfile (ubuntu:22.04 + cron)
- **GitHub CI:** Public repo - version controlled

### 📁 Files
| File | Purpose |
|------|---------|
| `backup.sh` | Main backup script |
| `restore.sh` | Restore files from backup |
| `Dockerfile` | Containerize the backup system |
| `notes.txt` / `secret.txt` | Sample files to backup |
### 🚀 How to Use
```bash
# Run backup manually
./backup.sh
# Check backups
ls -lh ~/Backups/
cat ~/Backups/backup.log | wc -l
cat ~/Backups/backup.log | tail -n 3

# Restore
./restore.sh
# Docker
docker build -t my-backup .
docker run my-backup
**2. Push to GitHub:**
```bash
git add README.md
git commit -m "Added professional README - project complete"
git push
