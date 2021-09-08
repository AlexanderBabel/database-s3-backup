#!/bin/bash -e

# # Backup directory
DEST=/backup

# Create backup dir (-p to avoid warning if already exists)
/bin/mkdir -p "$DEST"

# Log
echo "Backing up mysql"

# Dump from postgresql host into backup directory
eval "$(python3 /usr/bin/mysql-cmd.py)" > "$DEST/dump.sql"

# Run dokku backup script
/usr/bin/backup.sh
