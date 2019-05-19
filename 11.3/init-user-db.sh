#!/usr/bin/env bash
set -e
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
\connect postgres;
CREATE EXTENSION adminpack;
CREATE DATABASE gisdb;
\connect gisdb;
CREATE SCHEMA postgis;
ALTER DATABASE gisdb SET search_path=public, postgis, contrib;
\connect gisdb;
CREATE EXTENSION postgis SCHEMA postgis;
CREATE EXTENSION postgis_sfcgal SCHEMA postgis;
CREATE EXTENSION pgrouting;
EOSQL
