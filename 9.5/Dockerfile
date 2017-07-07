FROM postgres:9.5.7
COPY init-user-db.sh /docker-entrypoint-initdb.d
RUN apt-get update \
 && apt-get install -y postgresql-9.5-postgis-2.2 postgresql-contrib-9.5 \
 && apt-get install -y postgis \
 && apt-get install -y postgresql-9.5-pgrouting \
 && apt-get clean \
 && apt-get purge \
 && rm -rf /var/lib/apt/lists/*
