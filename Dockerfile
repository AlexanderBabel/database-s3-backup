FROM dokku/s3backup:0.11.1

RUN apk add --no-cache mongodb-tools postgresql-client

COPY mongodb.sh /usr/bin/mongodb.sh
COPY postgresql.sh /usr/bin/postgresql.sh

CMD /usr/bin/mongodb.sh