FROM ubuntu:22.04
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install -y cron && \
mkdir -p /root/Backups && \
chmod +x backup.sh restore.sh
CMD echo "=== My Backup Container Running ===" && \
./backup.sh && \
ls -lh /root/Backups/ && \
cat /root/Backups/backup.log && \
echo "Container Done!"
