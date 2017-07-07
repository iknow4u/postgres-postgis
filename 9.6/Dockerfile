FROM postgres:9.6.3
COPY init-user-db.sh /docker-entrypoint-initdb.d
RUN apt-get update \
 && apt-get install -y postgresql-9.6-postgis-2.3 postgresql-contrib-9.6 \
 && apt-get install -y postgis \
 && apt-get install -y postgresql-9.6-pgrouting \
 && apt-get clean \
 && apt-get purge \
 && rm -rf /var/lib/apt/lists/*
