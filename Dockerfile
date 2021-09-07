FROM alexbabel/s3backup:0.11.2

RUN apk add --no-cache mongodb-tools postgresql-client

COPY mongodb.sh /usr/bin/mongodb.sh
COPY postgresql.sh /usr/bin/postgresql.sh

CMD /usr/bin/mongodb.sh
