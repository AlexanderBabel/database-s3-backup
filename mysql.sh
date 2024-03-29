#!/bin/bash -e

# # Backup directory
DEST=/backup

# Create backup dir (-p to avoid warning if already exists)
/bin/mkdir -p "$DEST"

# Log
echo "Backing up mysql"

# Dump from postgresql host into backup directory
/usr/bin/mysqldump $(python3 /usr/bin/mysql.py) > "$DEST/dump.sql"

# Run dokku backup script
/usr/bin/backup.sh
