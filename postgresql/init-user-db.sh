#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER myapp;
    CREATE DATABASE myapp_development;
    GRANT ALL PRIVILEGES ON DATABASE myapp_development TO myapp;
EOSQL
