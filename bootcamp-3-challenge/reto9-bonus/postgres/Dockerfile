FROM postgres:latest
COPY init-db.sh /docker-entrypoint-initdb.d/
RUN chmod ugo+rwx /docker-entrypoint-initdb.d/init-db.sh