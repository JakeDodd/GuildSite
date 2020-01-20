#!/bin/bash
BASEDIR=$(dirname $0)
psql -U postgres -f "$BASEDIR/dropdb.sql" &&
createdb -U postgres guildsite &&
psql -U postgres -d guildsite -f "$BASEDIR/schema.sql" &&
psql -U postgres -d guildsite -f "$BASEDIR/user.sql" &&
psql -U postgres -d guildsite -f "$BASEDIR/data.sql"