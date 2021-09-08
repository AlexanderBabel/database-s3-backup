# database-s3-backup

## Usage

### Mongo Backup

```bash
  docker run -it \
      -e AWS_ACCESS_KEY_ID=ID \
      -e AWS_SECRET_ACCESS_KEY=KEY \
      -e BUCKET_NAME=backups \
      -e BACKUP_NAME=backup \
      -e ENCRYPTION_KEY=your_secret_passphrase
      -e DATABASE_URL=mongodb://user:password@host:port/database?replicaSet=rs0&authSource=authDatabase
      ghcr.io/alexanderbabel/database-s3-backup
```

### Postgresql Backup

```bash
  docker run -it \
      -e AWS_ACCESS_KEY_ID=ID \
      -e AWS_SECRET_ACCESS_KEY=KEY \
      -e BUCKET_NAME=backups \
      -e BACKUP_NAME=backup \
      -e ENCRYPTION_KEY=your_secret_passphrase
      -e DATABASE_URL=postgresql://user:password@host:port/database
      ghcr.io/alexanderbabel/database-s3-backup
```

### MySQL Backup

```bash
  docker run -it \
      -e AWS_ACCESS_KEY_ID=ID \
      -e AWS_SECRET_ACCESS_KEY=KEY \
      -e BUCKET_NAME=backups \
      -e BACKUP_NAME=backup \
      -e ENCRYPTION_KEY=your_secret_passphrase
      -e DATABASE_URL=mysql://user:password@host:port/database
      ghcr.io/alexanderbabel/database-s3-backup
```
