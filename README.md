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
      IMAGE_NAME mongodb.sh
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
      IMAGE_NAME postgresql.sh
```
