FROM postgres:11.3
COPY init-user-db.sh /docker-entrypoint-initdb.d
RUN apt-get update \
 && apt-get install -y postgresql-11-postgis-2.5 postgresql-contrib-9.6 \
 && apt-get install -y postgis \
 && apt-get install -y postgresql-11-pgrouting \
 && apt-get clean \
 && apt-get purge \
 && rm -rf /var/lib/apt/lists/*
