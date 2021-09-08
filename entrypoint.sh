#!/bin/bash -e

if [[ $DATABASE_URL = mongodb://* ]]; then
  /usr/bin/mongodb.sh
elif [[ $DATABASE_URL = postgresql://* ]] || [[ $DATABASE_URL = postgres://* ]]; then
  /usr/bin/postgresql.sh
elif [[ $DATABASE_URL = mysql://* ]]; then
  /usr/bin/mysql.sh
else
  echo "Could not find a supported protocol. Supported: mongodb, postgresql and mysql"
  exit 1
fi
