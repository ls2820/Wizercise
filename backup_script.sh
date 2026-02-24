#!/bin/bash

# Configuration
BUCKET_NAME="mongodb-ec2-instance-s3bucket-backups"
DB_USER="myAdmin"
DB_PASS="Quellawindiealeale"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_NAME="mongodb-daily-dump-$TIMESTAMP.gz"
LOG_FILE="$HOME/backup.log"

echo "--- Backup Started at $(date) ---" >> $LOG_FILE

# 1. Create the compressed backup (Dump)
mongodump --archive=/tmp/$BACKUP_NAME --gzip --username "$DB_USER" --password "$DB_PASS" --authenticationDatabase "admin" >> $LOG_FILE 2>&1

# 2. Upload to Amazon S3
aws s3 cp /tmp/$BACKUP_NAME s3://$BUCKET_NAME/daily-backups/ >> $LOG_FILE 2>&1

# 3. Clean up the temporary file on the EC2
rm /tmp/$BACKUP_NAME

echo "Success: $BACKUP_NAME uploaded to S3." >> $LOG_FILE
echo "--- Backup Finished at $(date) ---" >> $LOG_FILE
