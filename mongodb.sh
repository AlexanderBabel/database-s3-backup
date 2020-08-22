#!/bin/sh

# Backup directory
DEST=/backup

# Create backup dir (-p to avoid warning if already exists)
/bin/mkdir -p $DEST

# Log
echo "Backing up mongodb";

# Dump from mongodb host into backup directory
/usr/bin/mongodump --uri=$DATABASE_URL -o $DEST

# Run dokku backup script
/usr/bin/backup.sh
