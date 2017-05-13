#!/bin/bash

export PGPASSWORD=$POSTGRES_PASSWORD
psql -U "$POSTGRES_USER" "$POSTGRES_DB" < /battle-initdb/01-battledb_dump-0003-core.psql && \
echo "*** Database core loaded !" && \
psql -U "$POSTGRES_USER" "$POSTGRES_DB" < /battle-initdb/02-battledb_dump-0003-team-site.psql && \
echo "*** Database teams loaded !" && \
psql -U "$POSTGRES_USER" "$POSTGRES_DB" < /battle-initdb/03-battledb_dump-0003-referee.psql && \
echo "*** Database referees loaded !" && \
psql -U "$POSTGRES_USER" "$POSTGRES_DB" < /battle-initdb/04-battledb_dump-0003-contraintes.psql && \
echo "*** Database contraintes loaded !"
