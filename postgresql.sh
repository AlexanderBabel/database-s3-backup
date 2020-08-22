#!/bin/sh

# Backup directory
DEST=/backup

# Create backup dir (-p to avoid warning if already exists)
/bin/mkdir -p $DEST

# Log
echo "Backing up postgresql";

# Dump from postgresql host into backup directory
/usr/bin/pg_dump -Fc --no-acl --no-owner $DATABASE_URL -f $DEST

# Run dokku backup script
/usr/bin/backup.sh
